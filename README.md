***一键部署宝塔面板***
--
**默认ROOT和BT密码：Abc123456
已开放端口： 21 22 80 443 888 3306 8888**

```    
docker run -d -p 21:21 -p 22:22 -p 80:80 -p 443:443 -p 888:888 -p 3306:3306 -p 8888:8888 -it registry.cn-hangzhou.aliyuncs.com/webpanel/bt-panel:latest
```

------
