#!/bin/sh

echo -n "Action: "
read action
B="add"
if [ "$action" = "$B" ]
then
	zenity --entry --width=500 --text=Todo: | xargs ~/Dropbox/todo/todo.sh add &
else
	~/Dropbox/todo/todo.sh -p list | sed -r '/(TODO|--).*/d' | sed -r 's/([0-9]+)\s(.*)/\1\ \1\ "\2"/g' | xargs zenity --width 800 --height 600 --list --text=Todo --checklist --column=Done --column=number --column=Task --multiple | sed -r 's/\|/,/g' | xargs ~/Dropbox/todo/todo.sh do &
	
	
fi