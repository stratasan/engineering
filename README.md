For live site, visit: http://engineering.stratasan.com

To build this, use Python 3 and virtualenv.

```
mkvirtualenv --python=/usr/bin/python3 mkdocs
pip install -r requirements.txt
```

To open in your browser:

```
mkdocs serve -a localhost:8080 --livereload
```

See the mkdocs documentation for more info.

To deploy:

```
sh deploy.sh
```
