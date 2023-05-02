set -eu 

export PYTHONUNBUFFERED-true

VIRTUALENV=.data/venv

if [ ! -d $VIRTUALENV ]; then 
  python3 -m venv $VIRTUALENV
fi

if [! -f $VIRTUALENV/bin/pip ]; then
  curl --silent --show-error --retry 5 http://bootstrap.pypa.io/get-pip.py | $VIRTUALENV
fi 

$VIRTUALENV/bin/pip install -r requirments.txt 

$VIRTUALENV/bin/python3 app.py
footer
