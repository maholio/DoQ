Hi 👋

Small script to add DoQ support if you have no ADH. It can be done manually, but I think script will be better 😜

### Notice

It is redundant for devices with Adguard Home, but should not harm you. 


### How to use it?

Run this commands on your host machine (NOT router):

```
nano doq.sh
```

Paste code from above (or use v1 if you want) and save file.

```
scp -O -r doq.sh root@192.168.8.1:/tmp
```

Enter password

```
ssh root@192.168.8.1
```

Enter password again

```
cd /tmp
```

```
./doq.sh
```
### 🇺🇦 Author stands with Ukraine 🇺🇦
If you want to thank me, please [donate to Ukrainian army](https://war.ukraine.ua)
