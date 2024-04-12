# raspimonitor

Monitoring and alerting for your RaspberryPi

## Installation

### From git

```bash
git clone https://github.com/w0rmr1d3r/raspimonitor.git
cd raspimonitor
pip3 install -r requirements.txt
```

## Usage

### As Python script

```bash
# python3 raspimonitor.py YOURHOOKHERE THRESHOLD_TEMP_IN_CELSIUS
# Example
python3 raspimonitor.py http://your.web.hook.here 45
# Example temp as float:
python3 raspimonitor.py http://your.web.hook.here 45.6
```

### As cron job

Add your cron job as a script from above.

```bash
# 1. Open cron file
crontab -e
# 2. Add a cron
# Example - run every minute:
* * * * * python3 /path/to/raspimonitor.py http://your.web.hook.here 45
# Example - run every 5 minutes
*/5 * * * * python3 /path/to/raspimonitor.py http://your.web.hook.here 45
# 3. Reload cron service
sudo service cron reload
```

Ref. https://superuser.com/questions/232144/how-to-stop-a-currently-running-cron-job

## Contributing

Pull requests are welcome.

## License

[MIT](https://choosealicense.com/licenses/mit/) - [License file](LICENSE)

## Obtained inspiration from

- https://github.com/git-ogawa/raspi-statmon/blob/main/src/rstatmon/statdata.py
- https://github.com/mityax/rpi-temperature-alert/tree/master
- https://www.howtogeek.com/discord-slack-alert-raspberry-pi-too-hot/
