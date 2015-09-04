#!/usr/bin/env python

import sys
from splitter import Splitter

splitter = Splitter()

for arg in sys.argv:
    if arg == sys.argv[0]: continue
    print "Formatted '" + arg + "' -> '" + splitter.split_string_into_sentence(arg) + "'"
