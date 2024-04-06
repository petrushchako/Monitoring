# Building a Prometheus Server

### ABOUT THIS LAB
Prometheus is a powerful tool for monitoring your infrastructure. Getting started with Prometheus is as easy as setting up a single Prometheus server. There are multiple ways to install Prometheus. In this lab, you will have the opportunity to set up a Prometheus server by installing Prometheus from pre-compiled binaries made available by the Prometheus team.

### Solution
This is a list:

## Download and Install Prometheus

### Create the prometheus user:
```shell
sudo useradd -M -r -s /bin/false prometheus
```

### Create the prometheus directories:
```shell
sudo mkdir /etc/prometheus /var/lib/prometheus
```

### Download the pre-compiled binaries:
```shell
wget https://github.com/prometheus/prometheus/releases/download/v2.16.0/prometheus-2.16.0.linux-amd64.tar.gz
```

### Extract the binaries:
```shell
tar xzf prometheus-2.16.0.linux-amd64.tar.gz prometheus-2.16.0.linux-amd64/
```

### Move the files from the downloaded archive to the appropriate locations, and set ownership on these files and directories to the `prometheus` user:
```shell
sudo cp prometheus-2.16.0.linux-amd64/{prometheus,promtool} /usr/local/bin/
sudo chown prometheus:prometheus /usr/local/bin/{prometheus,promtool}
sudo cp -r prometheus-2.16.0.linux-amd64/{consoles,console_libraries} /etc/prometheus/
sudo cp prometheus-2.16.0.linux-amd64/prometheus.yml /etc/prometheus/prometheus.yml
sudo chown -R prometheus:prometheus /etc/prometheus
sudo chown prometheus:prometheus /var/lib/prometheus
```

### Run Prometheus in the foreground to make sure everything is set up correctly so far:
```shell
prometheus --config.file=/etc/prometheus/prometheus.yml
```

 In the output, we should see a message stating, "Server is ready to receive web requests."
> **Press Ctrl+C to stop the process.**


## Configure Prometheus as a systemd Service

### Create a systemd unit file for Prometheus:
```shell
sudo vi /etc/systemd/system/prometheus.service
```

<br>

### Define the Prometheus service in the unit file:

```shell
[Unit]
Description=Prometheus Time Series Collection and Processing Server
Wants=network-online.target
After=network-online.target

[Service]
User=prometheus
Group=prometheus
Type=simple
ExecStart=/usr/local/bin/prometheus \
    --config.file /etc/prometheus/prometheus.yml \
    --storage.tsdb.path /var/lib/prometheus/ \
    --web.console.templates=/etc/prometheus/consoles \
    --web.console.libraries=/etc/prometheus/console_libraries

[Install]
WantedBy=multi-user.target
```

<br>

### Make sure systemd picks up the changes we made:
```shell
sudo systemctl daemon-reload
```

<br>

### Start the Prometheus service:
```shell
sudo systemctl start prometheus
```

<br>

### Enable the Prometheus service so it will automatically start at boot:
```shell
sudo systemctl enable prometheus
```

<br>

### Verify the Prometheus service is healthy:
```shell
sudo systemctl status prometheus
```

We should see its state is `active (running)`.

Press `Ctrl+C` to stop the process.

<br>

### Make an HTTP request to Prometheus to verify it is able to respond:
```shell
curl localhost:9090
```

The result should be:<br>
 `<a href="/graph">Found</a>.`

<br>

### Check in browser
In a new browser tab, access Prometheus by navigating to:

`http://<PROMETHEUS_SERVER_PUBLIC_IP>:9090` 

(replacing <PROMETHEUS_SERVER_PUBLIC_IP> with the IP listed on the lab page). We should then see the Prometheus expression browser.