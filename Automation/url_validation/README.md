# A script to validate large sets of urls with ease
The primary goal of this script is to provide an efficient and safe way of validating the response code for a set of urls.
This script is best served with Python 3, and leverages the [requests](https://github.com/kennethreitz/requests) library.

## Declare a virtual environment for this project
```
python3 -m venv env
```

## Declare a set of URLS to be validated
You may copy your set of urls into the *data.csv* file just be sure to follow the same single column format.

*Activate your virtual environment*
```
source env/bin/activate
```
```
pip install requests
```

## So your data is ready? Lest go forth & validate
With a set of urls and a virtual environment you are ready to validate!
```
python url_validator.py
```
The script will ask you for the name of the file. The default value is *data.csv*.