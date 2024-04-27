## Auto Reboot

### 1. Install the necessary packages

```bash
sudo apt-get install cron streamlink -y
```

### 2. Create a script to reboot the Raspberry Pi

set execute permission for the script

```bash
chmod +x check_if_online.sh
```

### 3. Add the script to the crontab

```bash
crontab -e
```

Add the following line to the crontab file
Please make sure the script location matches your location

The number 10 in the first column means the script will run every 15 minutes

```bash
*/15 * * * * ~/repo/livestream-viewer/check_if_online.sh
```

you can see the logs of the script by running the following command

```bash
cat /tmp/livestream_status.log
```
