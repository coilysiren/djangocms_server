# DjangoCMS Server Manager

For managing DjangoCMS installation(s) on a server

```
virtualenv -p python3.4 .venv
source .venv/bin/activate
pip install git+git://github.com/LynnCo/djangocms_server.git
echo "PROJECT_NAME=YourCoolSite" >> .env
export $(cat .env | xargs)
djangocms -p . $PROJECT_NAME
```

## Requirements:

* `nginx`, in addition to everything djangocms requires
* the virtualenv must be named `.venv`
    * this sucks, and will be changed soon (TM)
* patience

## What you get:

* Upstart conf files for gunicorn and nginx, namespaced to the project name. That is:
    * `YourCoolSite-gunicorn.conf`
    * `YourCoolSite-nginx.conf`
* Simple command line aliases for the gunicorn and nginx services (ie 'service-start' = 'service YourCoolSite-gunicorn start'). These activate with the virtualenv. They are:
    * `service-start`
    * `service-stop`
    * `service-restart`
    * `service-status`
* Command line scripts for the 5 (**!!!**) log files that you should be watching, those being
    * `logs-watch-syslog`
    * `logs-watch-upstart`
    * `logs-watch-nginx`
    * `logs-watch-gunicorn`
    * `logs-watch-python`
* Command line scripts for deploying to a remote server and creating symlinks, but they're super WIP (they work for me... probably won't for you)

## License

[GNU Affero General Public License](https://www.tldrlegal.com/l/agpl3)
