#! /bin/bash

#--touch-reload wsgi.py --wsgi-file wsgi.py \

#--socket 0.0.0.0:3000 \

export PYTHONPATH=/app
pwd
ls -l
find .
#python3 -c "import app; print(app.__file__)"
#     --touch-reload myapp.py \
#      --mount /=myapp.app
#       --plugin python3 \

uwsgi \
      --http 0.0.0.0:3000 \
       --uid=www-data --gid=www-data \
       --wsgi myapp \
       --callable app

