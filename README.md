[Git Repo](https://code.nephatrine.net/nephatrine/docker-unifi) |
[DockerHub](https://hub.docker.com/r/nephatrine/unifi/) |
[unRAID Template](https://github.com/nephatrine/unraid-docker-templates)

# UniFi SDN Controller Docker

This docker container manages the UniFi SDN controller, a network management solution for Ubiquiti UniFi access points, gateways, and switches.

- [docker-base-alpine](https://code.nephatrine.net/nephatrine/docker-base-alpine)
- [UniFi SDN](https://unifi-sdn.ubnt.com/)

## Configuration

- ``{config}/data/db/*``: UniFi MongoDB Database
- ``{config}/data/system.properties``: UniFi Controller Configuration
- ``{config}/etc/crontab``: Crontab Entries
- ``{config}/etc/logrotate.conf``: Logrotate General Configuration
- ``{config}/etc/logrotate.d/*``: Logrotate Application Configuration

Once you start the container and log into the web interface you should be able to configure the controller. If the devices you intend to manage are on a different subnet, you may need to manually point them to the controller's IP using the ``set-inform`` command on each device so they show up for adoption.

## Ports

- **3478/udp:** STUN Port
- **6789/tcp:** Mobile Speedtest Port
- **8080/tcp:** Communication Port
- **8443/tcp:** GUI/API Port
- **8880/tcp:** HTTP Portal Redirect Port
- **8843/tcp:** HTTPS Portal Redirect Port
- **10001/udp:** AP Discovery Port

## Variables

- **PUID:** Volume Owner UID
- **PGID:** Volume Owner GID
- **TZ:** Time Zone

## Volumes

- **/mnt/config:** Configuration/Logs