# Điều khiển từ xa với kết nối SSH
## 1.Cài đặt SSH server trên máy ảo 

*Cấu hình mạng đảm bảo CentOS 9 kết nối được internet*
- Cài đặt OpenSSH

`sudo dnf install openssh-server -y`

- Khởi động và cho phép SSH tự động thực thi khi khởi động hệ điều hành 

`sudo sýtemctl start sshd`
`sudo systemctl enable sshd`

-Kiểm tra xem SSH có đang hoạt động hay chưa

`sudo systemctl status sshd`

# 2. Kết nối tới SSH server từ máy vật lý

*Trên hệ điều hành Window ta cài đặt phần mềm SSH client như MobaXterm*



*Tài liệu tham khảo*

[1] [https://cloud.z.com/vn/news/ssh/](https://cloud.z.com/vn/news/ssh/)
[2] [https://wiki.matbao.net/ssh-la-gi-cach-dung-ssh-trao-doi-du-lieu-voi-server-linux/](https://wiki.matbao.net/ssh-la-gi-cach-dung-ssh-trao-doi-du-lieu-voi-server-linux/)