# Homelab Media Stack


## homeserver
Includes the service files for the following applications:

* [Transmission / VPN][1]
* [Radarr][2]
* [Jackett][3]

Install script also provided to to enable and run services. 

### Dependencies
* Docker

## raspberry pi
A raspberry pi is used as a download client in a remote location to circumvent ISP bandwidth restrictions.

[1]: https://github.com/haugene/docker-transmission-openvpn
[2]: https://github.com/Jackett/Jackett
[3]: https://github.com/Radarr/Radarr