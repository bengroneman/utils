#!/usr/bin/env python3
from datetime import date
import os


def main():
    todays_date = date.today()

    this_year = str(todays_date.year)
    this_month = str(todays_date.month)
    this_day = str(todays_date.day)

    today = (this_year, this_month, this_day)

    # Build Directory Structure
    month_path = "{}/0{}".format(this_year, this_month)

    if not os.path.exists(month_path):
        os.makedirs(month_path)

    is_weekly_checklist = input("Is this a weekly checklist (y || n)? ") or "y"
    name_of_weekly_checklist = month_path + '/' + 'weekly-list-' + this_day + '.md'

    if is_weekly_checklist == "y":
        is_success = write_welcome_text(name_of_weekly_checklist, todays_date)
        if is_success:
            print("The weekly checklist is ready to be actioned")
            print("The name of the file is: %s" % name_of_weekly_checklist)
        else:
            print("There was an issue creating the weekly checklist")
            print("The file name was supposed to be: ".format(name_of_weekly_checklist))
    else:
        fn = input('Enter file name: ')
        file_name = month_path + "/" + fn + ".md"
        try:
            write_welcome_text(file_name, today)
        except IOError:
            print("Halp! IOError")
            print("Failed to create file")


def write_welcome_text(file_name, date):
    is_success = None
    print(date)
    try:
        date_content = "@Date: %s | %s | %s" % (date.year, date.month, date.day)
        file_instance = open(file_name, 'w+')
        file_instance.write("# What do you want to accomplish this week?\n")
        file_instance.write("\n")
        file_instance.write("|-----------------------------------------|\n")
        file_instance.write("@Author: Ben G Groneman\n")
        file_instance.write(date_content)
        file_instance.write("\n")
        file_instance.write("|-----------------------------------------|\n")
        is_success = True
    except IOError:
        print("Halp IO error")
        is_success = False

    return is_success


if __name__ == '__main__':
    main()