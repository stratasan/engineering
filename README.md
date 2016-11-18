#Live Site
[http://engineering.stratasan.com](http://engineering.stratasan.com)

#Installation Instructions

To build this project, we will use Python 3 and virtualenv

* Check if you have Python 3 installed
  ```
  python3
  ```

* If you see a message like `command not found: python3` and do not have Python 3 installed
  ```
  brew install python3
  ```

* Find out where Python 3 was installed
  ```
  which python
  ```

* If the path printed out is not `/usr/bin/python3`, replace that text below with your path
  ```
  mkvirtualenv --python=/usr/bin/python3 mkdocs
  ```

* Install requirements
  ```
  pip install -r requirements.txt
  ```

* To open in your browser
  ```
  mkdocs serve -a localhost:8080 --livereload
  ```

* To deploy:
  ```
  sh deploy.sh
  ```

#More Info
* This project is built with the tool [MkDocs documentation](http://www.mkdocs.org/)