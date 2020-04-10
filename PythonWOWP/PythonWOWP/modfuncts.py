"""
Universal functions used throughout the wowprmds Python console app.
"""

import datetime


def formatList(element):
    """
    Function to remove extra characters and return a string representation
    (in UPPER case) of data imported from MySQL.
    """
    badChars = ["'", "[", "]"]
    element = str(element)
    for i in badChars:
        element = element.replace(i,'')
    element = element.upper()
    return element

def formatPhone(element):
    """
    Function to format phone number data imported from MySQL.
    """
    if len(element) == 10:
        element = element[:3] + "-" + element[3:6] + "-" + element[6:]
    elif len(element) == 7:
        element = element[:3] + "-" + element[3:]
    elif element == "NULL":
        element = "NULL"
    else:
        element = "FORMAT ERROR"
    return element

def formatDatetime(element):
    """
    Function to formate datetime data imported from MySQL.
    """
    badChars = ["[", "]"]
    element = str(element)
    for i in badChars:
        element = element.replace(i,'')
    element = eval(element)
    return element