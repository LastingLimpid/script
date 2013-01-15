#!/bin/sh
sqlite3 -separator '     ' ~/fileinfo.db "select fileinfo_id,links from fileinfo where catalog='电视剧' or catalog='动漫'"
