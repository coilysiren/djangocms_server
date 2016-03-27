# DjangoCMS Server Manager

For managing multiple DjangoCMS installations on a server

`pip install git+git://github.com/LynnCo/djangocms_server.git`

Requirements:

* nginx
* python3.4, pip, virtualenv
* the virtualenv must be named `.venv`
    * the project shouldn't be named `project.venv` or similar >_>
* for deploys to work, the remote path should match `/home/apps/*$PROJECT_NAME*`
