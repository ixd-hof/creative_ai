# Styletransfer Google Drive Sync
Syncing Google Drive on Ubuntu for automatic drag-n-drop fast-style-transfer.

*Tested on Ubuntu 18.04*

## Install lengstrom/fast-style-transfer
https://github.com/lengstrom/fast-style-transfer

## Install *google-drive-ocamlfuse* and create a folder for syncing

```
$ sudo add-apt-repository ppa:alessandro-strada/ppa
$ sudo apt install google-drive-ocamlfuse

$ mkdir ~/google-drive

$ google-drive-ocamlfuse ~/google-drive
```

Log in with your Google account in the opening browser window:
https://linuxconfig.org/google-drive-on-ubuntu-18-04-bionic-beaver-linux

## Create folders
```
$ cd ~/google-drive
$ mkdir Transfer
$ mkdir Transfered
```

## Download script & create cron job
```
$ cd /home/you/fast-style-transfer
$ wget https://raw.githubusercontent.com/ixd-hof/styletransfer_gdrive_sync/master/check_gdrive.sh
$ chmod 755 check_gdrive.sh
$ crontab -e
... add ... for 10 minute interval
*/10 * * * * /home/you/fast-style-transfer/check_gdrive.sh
... and exit ...
```



