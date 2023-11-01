# Cấu hình IP tĩnh cho CentOS 7

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