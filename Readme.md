## Usage

1. Run `./setup.sh` which will download frankenphp binary for current CPU arch into this directory
2. Add following content to your `/etc/hosts` file
    ```
    127.0.0.1 localhost.in
    ```
2. run podman/docker compose up -d
    - This will start 4 containers. Frankenphp will be running in each of these three containers. 
3. Try accessing follwoing urls
    - Rocky linux  => https://localhost.in:2443/index.php
    - Fedora linux => https://localhost.in:3443/index.php
    - Debian linux => https://localhost.in:4443/index.php
    - Ubuntu linux => https://localhost.in:5443/index.php
4. In the case of Fedoralinux, we can see the following output
```
Warning: file_get_contents(): SSL context creation failure in /var/www/html/public/index.php on line 3

Warning: file_get_contents(): Failed to enable crypto in /var/www/html/public/index.php on line 3

Warning: file_get_contents(https://example.com): Failed to open stream: operation failed in /var/www/html/public/index.php on line 3
```
