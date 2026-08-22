# How to use these files

The contents of this folder should be copied into /etc/systemd/system/
To do so, just run the following command
```shell
suco cp <file(s))> /etc/systemd/system/
```

# Note
Since these services are run as root, make sure they've got the proper permissions
```shell
sudo chown root:root /etc/systemd/system/<file(s)>
```

## SELinux context (Fedora only)
```shell
sudo restorecon -v /etc/systemd/system/<file(s)>
```

