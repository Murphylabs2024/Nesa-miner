# Nesa Miner Guied
# Hướng dẫn cài đặt Nesa Miner tự động.
``` 
=======================================
 __  __ _   _ ____  ____  _   ___   __ 
|  \/  | | | |  _ \|  _ \| | | \ \ / / 
| |\/| | | | | |_) | |_) | |_| |\ V /  
| |  | | |_| |  _ <|  __/|  _  | | |   
|_|  |_|\___/|_| \_|_|   |_| |_| |_|   

=======================================
```
---

Nếu bạn cần hỗ trợ hoặc báo cáo lỗi, hãy liên hệ chúng tôi qua:

- [Telegram](https://t.me/MurphyNodeRunner) 
- [Twitter](https://x.com/murphy_node) 
- [Linktr.ee](https://linktr.ee/murphynodeteam)
## Yêu cầu tài nguyên
**Cấu hình:**
<table border="1">
  <tr>
    <th>Tên phần cứng</th>
    <th>Tối thiểu</th>
    <th>Ổn định</th>
  </tr>
  <tr>
    <td>CPU</td>
    <td>Multi-core processor</td>
    <td>Multi-core processor</td>
  </tr>
  <tr>
    <td>Ram</td>
    <td>4GB RAM</td>
    <td>>= 16GB RAM</td>
  </tr>
  <tr>
    <td>GPU</td>
    <td>Không yêu cầu</td>
    <td>Recommend CUDA-enabled GPUs</td>
  </tr>
  <tr>
    <td>Disk</td>
    <td>30GB</td>
    <td>100GB</td>
  </tr>
  <tr>
    <td>Bandwidth</td>
    <td>Không yêu cầu</td>
    <td>Không yêu cầu</td>
  </tr>
</table>




## 1. Phiên bản
[LINUX - Nesa]()


## 2. Thiết lập và cài đặt
**Tải file cấu hình và giải nén**
```
# Truy cập quyền root

sudo -i
```
```
# Cập nhật hệ thống và cài đặt curl

apt-get update && apt-get upgrade -y
```
```
# Cài đặt node

bash <(curl -s https://raw.githubusercontent.com/Murphylabs2024/Nesa-minner/refs/heads/main/code/nesaSetup.sh) && \
chmod +x ./nesaSetup.sh && \
bash ./nesaSetup.sh
```

**Cấu hình node**
  - Chọn tác vụ `1` -> Điền các `RPC`, `Gas` , `PrivateKey` như sau (Gas khuyến nghị >= 100).
 
 ![Ảnh](./images/t3rn-config.jpg
)
  - Chọn tác vụ `2` -> xem trạng thái node.
  
 ![Ảnh](./images/t3rn-logs.jpg
)


## 3. Kiểm tra active miner
**Truy cập đường link sau, thay thế bằng địa chỉ của bạn:**
https://node.nesa.ai/
