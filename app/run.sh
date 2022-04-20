#! /bin/bash

#      --http 0.0.0.0:3000 \
#      --hook-master-start "unix_signal:1 gracefully_kill_them_all"
#      --uid=www-data --gid=www-data \

export PYTHONPATH=/app
uwsgi \
      --socket 0.0.0.0:3000 \
      --touch-reload myapp.py \
      --module myapp \
      --callable app
