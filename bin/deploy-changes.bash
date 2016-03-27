source bin/variables.bash
git push
ssh root@$PROJECT_URL -t " \
    cd /home/apps/$PROJECT_FOLDER ;\
    git pull ;\
    source .venv/bin/activate ;\
    pip install -qr requirements.txt"

# bash bin/service-reload-files.bash
# bash bin/service-restart.bash