source bin/variables.bash
export PATH=/var/log/nginx/*.log
echo 'Watching '$PATH
find $PATH -type f -print0 | xargs -0 tail -f
