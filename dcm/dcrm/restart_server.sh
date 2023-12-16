#!/bin/bash

# Start Django server
python3 manage.py runserver 0.0.0.0:8000 &

# Watch for changes in the current directory and subdirectories
watchmedo auto-restart --directory=./ --recursive --patterns="*.py" --command="pkill -f 'python3 manage.py runserver'"

