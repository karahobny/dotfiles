#!/bin/sh

TERM=dumb
SHELL=rc

tabstop=4
font='/mnt/font/Go Mono/9a/font'

plumber &
exec sam $*