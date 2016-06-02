#!/bin/bash 
# Magic that makes it happen: 
# One category: 
ans=$(zenity --height 300 --list --text "Which context would you like?" --radiolist --column "Pick" --column "Context" TRUE data FALSE pc FALSE web FALSE fiction FALSE nonfiction FALSE secondlife FALSE writing FALSE email FALSE phone); 
cat -b /home/USER/Documents/todo/todo.txt | grep --color=always @$ans > /home/USER/scripts/sortedtodo.txt 
# Move base there, overwrite old. 
cat /home/derrick/Dropbox/todo.txt > /home/derrick/.conky/conkyrc_todo 
# use zenity to choose categories. use text files to hold categories 
ans=$(zenity --list --text "What categories shall we show?" --checklist --column "Pick" --column "options" TRUE @pc TRUE @web FALSE @email FALSE @phone --separator=" -e "); cat -b /home/USER/Documents/todo/todo.txt | grep -e $ans > /home/USER/scripts/sortedtodo.txt; echo '${execi 30 cat -b /home/USER/Documents/todo/todo.txt | grep -e '$ans' > /home/USER/scripts/sortedtodo.txt}' | cat - >> /home/USER/.todoconky ; echo '${color White}${execi 30 cat /home/USER/scripts/sortedtodo.txt}' | cat - >> /home/USER/.todoconky echo '${color DarkSlateGray}${hr 2}' | cat - >> /home/USER/.todoconky killall conky 
# restart my top-of-screen bar 
conky -c /home/USER/.conkybar & 
# start or restart my todo list 
conky -c /home/USER/.todoconky & todorc_base.txt 
# Text alignment, other possible values are commented 
alignment top_left 
#alignment top_right 
#alignment bottom_left 
#alignment bottom_right 
# Gap between borders of screen and text 
# same thing as passing -x at command line 
gap_x 970 gap_y 40 
maximum_width 300 use_xft yes xftfont verdana:size=9 xftalpha 0.8 own_window yes own_window_type override own_window_transparent yes own_window_colour 262626 own_window_hints undecorated,below,sticky,skip_taskbar,skip_pager double_buffer yes draw_shades no draw_outline yes draw_borders no stippled_borders 10 border_width 1 default_shade_color grey default_outline_color black default_color BADCDD use_spacer none no_buffers yes text_buffer_size 2048 uppercase no color1 F8DF58 update_interval 5 update_interval_on_battery 10 TEXT ${color DarkSlateGray}${hr 2}