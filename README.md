
### 编译容器
```
docker build -t ssserver .
```

### 创建容器

```
docker run -id -e PASSWORD=woaini -e M="aes-256-cfb" --name sss -p8008:443 ssserver
```
+ 默认密码 `gxfchbnl`   // 恭喜发财红包拿来
+ 默认加密 `aes-256-cfb`

[github shadowsocks link](https://github.com/shadowsocks/shadowsocks/tree/master)