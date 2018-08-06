#!/bin/bash

# Captures screenshot from remote adb device and pulls it to current directory
function screenshot() {
  adb shell screencap -p /sdcard/$1.png
  adb pull /sdcard/$1.png
  adb shell rm /sdcard/$1.png
}
