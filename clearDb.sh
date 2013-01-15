#!/bin/sh
sqlite3 ~/fileinfo.db "delete from fileinfo where catalog='电视剧' or catalog='动漫'"
