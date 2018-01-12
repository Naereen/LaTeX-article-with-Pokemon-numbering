#!/usr/bin/python3
# -*- coding: utf-8; mode: python -*-
"""Convert the json data to tex with a template"""

from __future__ import print_function # Python 2 compatibility if needed

from sys import argv
from string import Template
import pprint
import json


with open("_template.tex") as templf:
    text_template = ''.join(templf.readlines())
    template = Template(text_template)


def main(jsonname):
    print("\nReading json data from", jsonname)
    texname = jsonname.replace("json", "tex")
    with open(jsonname, "r") as jsonfile:
        obj = json.load(jsonfile)
        # pprint.pprint(obj)
        obj_latex = template.substitute(obj)
        print("Writing tex file to", texname, "...")
        with open(texname, "w") as texfile:
            print(obj_latex, file=texfile)


if __name__ == '__main__':
    for jsonname in argv[1:]:
        main(jsonname)
