source bin/variables.bash
export PATH=/var/log/gunicorn/*.log
echo 'Watching '$PATH
find $PATH -type f -print0 | xargs -0 tail -f
