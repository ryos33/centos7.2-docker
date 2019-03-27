#!/bin/sh

yum -y update

localedef -f UTF-8 -i ja_JP ja_JP
localectl set-keymap jp106
localectl set-keymap jp-OADG109A
localectl set-locale LANG=ja_JP.utf8
timedatectl set-timezone Asia/Tokyo

