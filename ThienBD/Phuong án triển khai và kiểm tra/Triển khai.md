# 1. Kiểm tra OS đã cài đặt 

Sử dụng câu lệnh phía dưới để kiểm tra phiên bản OS cài đặt đã đúng chưa , ở đây bản cần cài đặt là 22

```
cat /etc/os-release 
```

Sử dụng câu lệnh sau để kiểm tra hostname xem đã chuẩn cài đặt chưa 

```
hostnamectl
```

Để thay đôi lại cho đúng tên hostname ta dùng lệnh 

```
sudo hostnamectl set-hostname database-1
```



# 2. Thiết lập tham số cần thiết cho OS Ubuntu 22

# 3. Cấu hình IP theo yêu cầu 

Vào file interface bằng lệnh

```
vi /etc/network/interface
```

Ta sẽ cấu hình ip theo yêu cầu trong file cấu hình 

Sau khi lưu và thoát ra ngoài , ta restart lại mạng bằng lệnh

```
systemctl restart networking
```

Đối với VLAN ta cũng khai báo trong file interfaces

```
# vi /etc/network/interfaces
auto ens33.11
iface ens33.11 inet static
    address 10.1.11.11
    netmask 255.255.255.0
    vlan-raw-device ens33
```


# 4. Cài đặt phần mềm theo yêu cầu 

**Application server**

- Cài đặt Java 8

Check version

```
java -version
```

Cài đặt OpenJDK

```
sudo apt-get install openjdk-8-jdk
```

Xác minh lại phiên bản cài đặt 

```
java -version
```

- Cài đặt Apache Tomcat Ubuntu 22.04

```
sudo apt install wget
```
Giải nén tập tin tar và cài đặt Tomcat

```
tar xvf apache-tomcat-${VER}.tar.gz
```
Tại thư mục /usr hãy di chuyển các tệp đã giải nén vào đây:

```
sudo mv apache-tomcat-${VER} /usr/share/apache-tomcat
```

Tạo user apache tomcat

```
sudo useradd -M -d /usr/share/apache-tomcat tomcat
sudo chown -R tomcat /usr/share/apache-tomcat
```

- Cài đặt Redis Ubuntu 22.04

```
sudo apt install redis-server
```


- Cài đặt RabbitMQ Ubuntu 22.04

Cài đặt máy chủ RabbitMQ
```
apt-get install curl gnupg apt-transport-https -y
```

Hãy tiếp tục cài đặt các gói ErLang cần thiết

```
apt-get install -y erlang-base
```


**Database server**

- Cài đặt My SQL

Cài đặt server My SQL

```
sudo apt install mysql-server
```

Kiểm tra lại version server

```
mysqld –version
```

- Cấu hình firewall mềm để chặn truy cập trái phép










*Tài liệu tham khảo*

[1] [https://kdata.vn/cam-nang/cai-dat-apache-tomcat-tren-ubuntu-2204](https://kdata.vn/cam-nang/cai-dat-apache-tomcat-tren-ubuntu-2204)
[2] [https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-22-04](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-22-04)
[3] [https://cloudviet.com.vn/cach-cai-dat-java-tren-ubuntu-22-04/](https://cloudviet.com.vn/cach-cai-dat-java-tren-ubuntu-22-04/)
[4] [https://www.cherryservers.com/blog/how-to-install-and-start-using-rabbitmq-on-ubuntu-22-04](https://www.cherryservers.com/blog/how-to-install-and-start-using-rabbitmq-on-ubuntu-22-04)

[5] [https://phoenixnap.com/kb/install-mysql-ubuntu-22-04](https://phoenixnap.com/kb/install-mysql-ubuntu-22-04)