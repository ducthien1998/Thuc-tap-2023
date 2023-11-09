# Cấu hình IP tĩnh cho CentOS 7

## Cấu hình bằng dòng lệnh

Kiểm tra IP hiện tại của thiết bị 

![Alt text](../imgs/1.png)

Tiếp theo ta vào thư mục chứa card mạng 

`cd /etc/sysconfig/network-scripts/`

![Alt text](../imgs/2.png)

Mở file ifcfg-ens33

`vi ifcfg-ens33`

![Alt text](../imgs/3.png)

Sau khi truy cập file ta sửa dòng 
`BOOTPROTO="dhcp" -> BOOTPROTO="static"`
Thêm 4 dòng sau xuống dưới cuối
`IPADDR=192.168.1.18`
`GATEWAY=192.168.1.1`
`NETMASK=255.255.255.0`
`DNS1=8.8.8.8`
`DNS2=8.8.4.4`

Sau đó nhấn ESC và bấm :wq
Sau khi thoát ra khỏi file , ta restart lại mạng bằng câu lệnh 
`systemctl restart network.service`

![Alt text](../imgs/4.png)

Kiểm tra lại địa chỉ IP xem đã được Restart chưa 

![Alt text](../imgs/5.png)

## Cấu hình bằng sửa file

Ta dùng câu lệnh phía dưới để mở Network Manager

`nmtui`

![Alt text](../imgs/6.png)

Chọn Edit a connection và tab chọn OK

![Alt text](../imgs/7.png)

Tab chọn edit

![Alt text](../imgs/8.png)

Ta sửa địa chỉ IP như dưới hình sau đó tab OK

![Alt text](../imgs/9.png)

Dùng câu lệnh sau để restart lại ip

`systemctl restart network.service`

![Alt text](../imgs/10.png)

Như vậy ta đã cấu hình static ip thành công 


# Cấu hình IP tĩnh cho CentOS 9

