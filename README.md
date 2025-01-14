# Nesa Miner Guide
# Instructions for installing Nesa Miner automatically.
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

If you need support or report an error, please contact us via:

- [Telegram](https://t.me/MurphyNodeRunner) 
- [Twitter](https://x.com/murphy_node) 
- [Linktr.ee](https://linktr.ee/murphynodeteam)
## Request resources
**Req Systems:**
<table border="1">
  <tr>
    <th>Hardware</th>
    <th>Min</th>
    <th>Stable</th>
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
    <td>No req</td>
    <td>Recommend CUDA-enabled GPUs</td>
  </tr>
  <tr>
    <td>Disk</td>
    <td>30GB</td>
    <td>100GB</td>
  </tr>
  <tr>
    <td>Bandwidth</td>
    <td>No req</td>
    <td>No req</td>
  </tr>
</table>




## 1. Version
[LINUX - Nesa](https://github.com/user-attachments/files/18408426/nesaSetup.zip)


## 2. Setup and installation
**Download the configuration file and unzip it**
```
# Root access

sudo -i
```
```
# Update the system and install curl

apt-get update && apt-get upgrade -y
```
```
# Install nodes

curl -L https://github.com/user-attachments/files/18408426/nesaSetup.zip -o nesaSetup.zip
unzip -o nesaSetup.zip
chmod +x ./nesaSetup.sh
bash ./nesaSetup.sh

```

**Node configuration**
  - Select Wizardy
 
 ![Ảnh](./img/1.png)
 >Enter
  - Rename `yourname` with your name
  
 ![Ảnh](./img/2.png)
 >Enter

 - Change `yourmail@gmail.com` with your mail
 
 ![Ảnh](./img/3.png)
 >Enter

 - Use my ref 
 ```
 nesa1jv4f0wrvyw436ruhflg448w8k33jw9uqeqhe00
 ```
 
 ![Ảnh](./img/4.png)
>Enter

 - Go to `https://huggingface.co/` -> Sign Up -> confirm your mail
 
 ![Ảnh](./img/5.png)
 - Click account -> click Access Tokens
 
 ![Ảnh](./img/6.png)
 - Click Create new token
 
 ![Ảnh](./img/7.png)
 - Tick all like this
 
 ![Ảnh](./img/8.png)
 - Click create token
 
 ![Ảnh](./img/9.png)
 - Copy your token
 
 ![Ảnh](./img/10.png)
 - Paste in here
 
 ![Ảnh](./img/11.png)
 - Go to [Leap wallet](https://chromewebstore.google.com/detail/leap-cosmos-wallet/fcfcfllfndlomdhbehjjcoimbgofdncg?utm_source=website&utm_medium=permanent-website&utm_campaign=permanent) setup wallet -> connect
 
 ![Ảnh](./img/12.png)
 - Open your wallet
 
 ![Ảnh](./img/13.png)
 - Get your privatekey
 
 ![Ảnh](./img/14.png)
 - Select chain get privatekey
 
 ![Ảnh](./img/15.png)
 - Paste in here
 
 ![Ảnh](./img/16.png)
 >Enter
 - Yes
 
 ![Ảnh](./img/17.png)
 >Enter

## 3. Check active miner

- Check docker
```
docker ps
```

- Check logs docker
```
docker logs -f orchestrator
```

- Get your NODE ID
```
cat .nesa/identity/node_id.id
```

**Visit the following link, replace it with your node_id:**
https://node.nesa.ai/
