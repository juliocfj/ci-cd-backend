#!/bin/bash
cd ~/apps/ci-cd-backend
source venv/bin/activate
pkill gunicorn || true
gunicorn -w 4 -k uvicorn.workers.UvicornWorker main:app --bind 0.0.0.0:8000 --daemon

