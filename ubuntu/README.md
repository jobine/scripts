# Ubuntu scripts
## xsync

This shell script is used to sync files/directories between hosts. 

Make sure whitelist and balcklist(TBD) files are put under the same folder (aka. /usr/local/bin) where xsync script is.

```shell
drwxr-xr-x  2 root root 4096 Jan 18 17:32 ./
drwxr-xr-x 12 root root 4096 Aug  7 15:55 ../
lrwxrwxrwx  1 root root   38 Jan 18 17:32 blacklist
lrwxrwxrwx  1 root root   38 Jan 18 17:31 whitelist
-rwxrwxrwx  1 root root  386 Jan 18 18:30 xsync*
```

xsync depends on rsync.

```shell
sudo apt install rsync
```