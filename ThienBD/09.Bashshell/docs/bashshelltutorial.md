# BASH SHELL TUTORIAL 

# 1. Interactive Shell và Non-Interactive Shell
- **Interactive Shell**: Nó cho phép bạn nhập và chỉnh sửa các lệnh, sau đó thực thi chúng khi bạn nhấn phím Return.
- **Non-Interactive Shell**: Bash shell cũng có thể được chạy non-interactively script, làm cho shell không cần sự tương tác của con người. Hành vi tương tác và hành vi theo tập lệnh phải giống hệt nhau 
# 2.Cách tạo 1 file bash shell

Thay vì phải thực thi nhiều câu lệnh phức tạp, mất thời gian, chúng ta có thể viết vào một file để thực thi nó, chúng ta gọi đó là shell script.

- Để tạo 1 file script bash shell ta dùng dòng lệnh 
```
touch example.sh
```
- Thêm quyền thực thi đối với file
```
chmod +x example.sh
```
- Thêm code vào file 
    - Dòng đầu tiên chuỗi ký tự #! được gọi là shebang1 `#!/bin/bash`
    - Phần phía dưới ta sẽ viết những dòng lệnh ta mong muốn 
*Ví dụ*
```
echo "Hello World"
```

- Để chạy được file ta có các cách sau 
    - `./example.sh`
    - `/bin/bash example.sh`
    - `bash example.sh`
    - `sh example.sh`


# 4.Lệnh If

Cũng như các ngôn ngữ lập trình, với một danh sách dài các lệnh thì không thể thiếu được câu lệnh rẽ nhánh cơ bản để kiểm tra xem điều kiện đúng hay sai mà thực thi những việc mình cần.
Câu lệnh đơn giản nhất sẽ có cấu trúc như dưới

```
if điều kiện
then
	1 hoặc nhiều câu lệnh ở đây
fi
```
hoặc 
```
if điều kiện
then
	1 hoặc nhiều câu lệnh ở đây
else
    xử lý khác ở đây
fi
```
hoặc
```
if điều kiện 1
then
	xử lý 1
elif điều kiện 2
then
	xử lý 2
fi
```

**Một số điều kiện cho if, else khác**

*Lệnh so sánh với số*


| Cú pháp |Ý nghĩa|
|---|---|
|n1 -eq n2|Kiểm tra n1 = n2|
|n1 -eq n2|Kiểm tra n1 = n2|
