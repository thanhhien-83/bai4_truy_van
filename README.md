# bai4_truy_van
Bài tập 04 của sv K225480106016_Hứa Thị Thanh Hiền
bai tap 4: (sql server)
yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó

Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)  
Tạo bảng GV với 2 trường là MaGV và Tên GV. Khoá chính là MaGV.  
![Screenshot 2025-04-15 071245](https://github.com/user-attachments/assets/962227ee-b947-4538-86dd-e8d7480781a5)  
Tạo bảng Lop gồm MaLop và TenLop  
![Screenshot 2025-04-15 071302](https://github.com/user-attachments/assets/b69dbc55-75b7-48bf-b3d6-a411da54cc20)   
Tạo bảng Mon  
![Screenshot 2025-04-15 071327](https://github.com/user-attachments/assets/30b65a6c-eaaf-4414-b2ab-5b01f1d34238)  
Tạo bảng Phong  
![Screenshot 2025-04-15 071357](https://github.com/user-attachments/assets/83a09b93-49ba-4b4f-9455-78972213d7df)  
Tạo bảng ThoiGian  
![Screenshot 2025-04-15 071413](https://github.com/user-attachments/assets/34392244-78c3-4ecb-bda5-7cbf69844183)  
Tạo bảng TKB  
![Screenshot 2025-04-15 071432](https://github.com/user-attachments/assets/9253d74a-767e-42c3-a414-70684f59dfdb)  
Foreign Key Relationships để quản lý và chỉnh sửa các khóa ngoại (foreign key) giữa các bảng.  
![Screenshot 2025-04-15 071457](https://github.com/user-attachments/assets/f083daec-3c06-44fd-8c35-b4985b2bba0f)   
Nhập dữ liệu cho bảng ThoiGian  
![Screenshot 2025-04-15 071844](https://github.com/user-attachments/assets/a9ca804d-df98-4025-bfdc-0c7fda923890)  
TKB Bộ Môn - TNUT HK3 Năm học 2024-2025  
![Screenshot 2025-04-15 073502](https://github.com/user-attachments/assets/52677583-c104-447e-9a1c-f2bce298f73e)  
Lấy dữ liệu từ trang wed vào và lọc chúng  
![Screenshot 2025-04-15 073543](https://github.com/user-attachments/assets/9d0cefe5-e0a1-490c-8d32-597bc6c5ed63)  
Nhập dữ liệu cho bảng GV  
![Screenshot 2025-04-15 074732](https://github.com/user-attachments/assets/9004a95b-9148-490e-bfc2-d60edc46fec7)  
Nhập dữ liệu cho bảng Lop  
![Screenshot 2025-04-15 075114](https://github.com/user-attachments/assets/47bfb4e5-1f63-4fc5-90c4-992f76967f6f)  
Nhập dữ liệu cho bảng Mon  
![Screenshot 2025-04-15 075230](https://github.com/user-attachments/assets/c3aca70e-2cc4-42e1-8001-73e0ac32f16b)  
hập dữ liệu cho bảng Phong  
![Screenshot 2025-04-15 075401](https://github.com/user-attachments/assets/4b74d2ec-dbe2-41d3-8eb7-8bc9b92bdfdc)  
Tạo hàm ufn_GiangVienDangDay, dùng để tra cứu thông tin giảng dạy của giảng viên trong khoảng thời gian cụ thể.  
 ![Screenshot 2025-04-15 104051](https://github.com/user-attachments/assets/c0d7f1b5-495c-492f-b4f8-4e8e6d802cf0)  
Nhập dữ liệu cho bảng TKB  
![Screenshot 2025-04-15 104130](https://github.com/user-attachments/assets/d0899e92-dffb-4442-9b75-babc8556c095)  
Tạo sơ đồ quan hệ giữa các bảng trong csdl.  
Các bảng được liên kết gồm: BangPhong, ThoiGian,BangGV,BangLop,BangMon.   
Trong đó bảng trung tâm là TKB, liên kết khoá ngoại các bảng còn lại.  
![image](https://github.com/user-attachments/assets/d871a9f5-f48e-48f5-9aa4-caa989e57fda)  




