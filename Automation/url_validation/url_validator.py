import requests
import csv
import logging
import time
import sys


def main():
    url_data = get_csv_data()
    error_count = 0
    url_data.pop(0) # BOM

    for url_path in url_data:   
        is_valid = validate_url(url_path)
        time.sleep(2) # give them servers a break, eh?

        if is_valid:
            print("Success!")
        else:
            error_count += 1

    if error_count >= 1:
        print("Whoops, %s urls were invalid. Check the logs for more info" % error_count)
        sys.exit(1)
    elif error_count == 0:
        print("Woooo, there were no errors!")
        sys.exit(1)


def get_csv_data():
    name_of_file = input("Name of csv data file [data]: " ) or "data"

    with open('%s.csv' % name_of_file, 'r') as csv_file:
        url_reader = csv.reader(csv_file)

        return list(map(lambda url: url[0], url_reader))


def validate_url(url):
    response = requests.get(url)

    # TODO: Gracefully handle a domain that doesn't exist
    if response.status_code == 200:
        return True
    else:
        print("Failure, with status code: %s " % response.status_code)
        logging.basicConfig(filename='app.log', filemode='w', format='%(asctime)s - %(levelname)s - %(message)s')
        logging.warning('The URL request has failed:  %s' % url)
        return False


if __name__ == "__main__":
    main()
    