#! /bin/bash

#--touch-reload wsgi.py --wsgi-file wsgi.py \
    uwsgi --socket 0.0.0.0:3000 \
      --touch-reload app.py \
      --uid=www-data --gid=www-data \
      --mount /=app:app
