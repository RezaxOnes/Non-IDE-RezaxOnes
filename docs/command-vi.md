**Docs Việt Nam**
**1. Khái niệm**
- Non-IDE-RezaxOnes tên cũ là Non-IDECPlusPlus là một editor lai nhẹ IDE dùng cơ chế wrapper(bọc lại) các lệnh trên terminal only được gọi theo lệnh cấp cao hơn
- Sau đó chuyển thành lệnh bash thuần (lệnh từ NIRO => lệnh command thuần)
- Non-IDE-RezaxOnes có sức mạnh là chỉ cần gõ r / run là sẽ run code ngay tiết kiệm rất nhiều thời gian thay vì nhấn nút run trên máy tính
- Non-IDE-RezaxOnes có settings cho phép sửa trực tiếp các file alias(bí danh) và định nghĩa cách nó hoạt động lại
- Một số lệnh được chuẩn hoá sao cho từ ngữ dễ hiểu nhất dành cho con người
**2. Một số lệnh linux cơ bản**
# 2.1 rm -r 
- Xoá folder một cách đệ quy, rất nguy hiểm nếu xoá nhầm
- Ví dụ: rm -r \<files or path>
# 2.2 cd
- Thay đổi nơi thư mục đang đứng
# 2.3 cd -
- Quay lại cấp thư mục đang đứng lần cuối cùng, chỉ quay lại nếu vô tình thực hiện cd sau 1 bước có thể quay lại trước 1 bước
# 2.4 cd .. \ ../..
- Quay lại 1 - 2 cấp thư mục đang đứng, ví dụ cd .. sẽ lùi 1 thư mục
- Ví dụ: /home/user dùng "cd .." => /home
**3. Lệnh của Non-IDE-RezaxOnes-Command**
# 3.1 edit
Ví dụ: edit \<Name IDE or Editor> \<files or path>
 - vm = vim
 - vsc = visual studio code
 - gte = gnome text editor
# Example: edit gte ./test.cpp
# 3.2 r, m-run, run, mr, m-debug, debug
- run/r and debug = run fixed file in command you can edit it
- m-run/mr = manual run
- debug = debug fixed file in command you can edit it
- m-debug = manual debug
- Example: >> ./test.cpp
# 3.3 list
- List một đường dẫn bất kỳ tương đương với "ls"
- NIRO-C / Non-IDE-Command list \<path>
# 3.4 edit
- Edit một file bất kì
- NIRO-C / Non-IDE-Command edit \<editor> \<file>
# 3.5 Compiler
- Biên dịch một file bất kì (mặc định đang là C++) tương đương với biên dịch thường của g++
- NIRO-C / Non-IDE-Command compiler \<file>
# 3.6 run
- Chaỵ một file bất kì (mặc định đang là C++) tương đương với ./file-execute
- NIRO-C / Non-IDE-Command run \<file>
# 3.7 new
- Tạo một file, folder bất kì tương đương với mkdir / touch
- NIRO-C / Non-IDE-Command new \<file / folder> \<name>
# 3.8 remove
- Xoá ngay lập tức một file hoặc folder chỉ định bất kì
- NIRO-C / Non-IDE-Command remove \<file / folder> \<file>
# 3.9 safe-remove
- Xoá như remove nhưng sẽ hỏi lại trước khi xoá
- NIRO-C / Non-IDE-Command safe-remove \<file / folder> \<file>
**4. Lệnh của Non-IDE-RezaxOnes-Settings**
# 4.1 edit
- Chỉnh sửa các file lệnh hay chỉnh sửa cách nó hoạt động, ta có thể chỉnh sửa run chạy như C++ thành chạy như python
- NIRO-S / Non-IDE-Settings edit \<editor> \<file if you need to change / edit file contained in $pfile_env>
# 4.2 list
- Hiển thị các file lệnh hiện có thể chỉnh sửa được
- NIRO-S / Non-IDE-Settings list
## ------------- CẬP NHẬP LẦN CUỐI 9/2/2026 -------------