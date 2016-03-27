# DjangoCMS Server Manager

For managing multiple DjangoCMS installations on a server

`pip install git+git://github.com/LynnCo/djangocms_server.git`

I wouldn't reccomend actually running this code currently, instead use it as a reference for writing your own.

## Requirements:

* **nginx**, in addition to everything djangocms requires
* the virtualenv must be named `.venv`
    * the project shouldn't be named `$PROJECT_NAME.venv` or similar >_>
* for deploys to work, the remote path should match `/home/apps/*$PROJECT_NAME*`
    * this sucks, I'll work out how to get around it
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
* Command line scripts for the 5 (*!!!*) log files that you should be watching, those being
    * `logs-watch-syslog`
    * `logs-watch-upstart`
    * `logs-watch-nginx`
    * `logs-watch-gunicorn`
    * `logs-watch-python`
* Command line scripts for deploying to a remote server and creating symlinks, but they're super WIP (they work for me... probably won't for you)
