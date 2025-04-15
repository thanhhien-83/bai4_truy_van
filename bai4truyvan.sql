CREATE FUNCTION ufn_GiangVienDangDay
(
    @datetime1 DATETIME,
    @datetime2 DATETIME
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        GV.TenGV AS HoTenGV,
        Mon.TenMon AS MonDay,
        FORMAT(DATEADD(SECOND, DATEDIFF(SECOND, 0, TG1.GioVao), CAST(TKB.Ngay AS DATETIME)), 'HH:mm') AS GioVao,
        FORMAT(DATEADD(SECOND, DATEDIFF(SECOND, 0, TG2.GioRa), CAST(TKB.Ngay AS DATETIME)), 'HH:mm') AS GioRa
    FROM 
        TKB
    JOIN BangGV GV ON TKB.MaGV = GV.MaGV
    JOIN BangMon Mon ON TKB.MaMon = Mon.MaMon
    JOIN ThoiGian TG1 ON TKB.TietBD = TG1.TietBD                             -- Giờ vào
    JOIN ThoiGian TG2 ON (TKB.TietBD + TKB.SoTiet - 1) = TG2.TietBD         -- Giờ ra
    WHERE 
        DATEADD(SECOND, DATEDIFF(SECOND, 0, TG1.GioVao), CAST(TKB.Ngay AS DATETIME)) < @datetime2 AND
        DATEADD(SECOND, DATEDIFF(SECOND, 0, TG2.GioRa), CAST(TKB.Ngay AS DATETIME)) > @datetime1
);
