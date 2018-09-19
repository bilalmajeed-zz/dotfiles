#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import commands

def dropbox_st():
    output = commands.getoutput('pgrep -x "dropbox"')
    if output != "":
        return " "
    return ""


def wifi_st():
    output = commands.getoutput('iwconfig 2>&1 | grep ESSID')
    if "off" not in output:
        return " "
    return ""

tray_out = "%{F#A4A4A4}"
tray_out += wifi_st() 
tray_out += dropbox_st()
print(tray_out)

