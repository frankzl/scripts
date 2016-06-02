#!/usr/bin/perl
#use utf8;
use open ':std', ':encoding(UTF-8)';
#use Unicode::Normalize;

#binmode STDOUT, ':utf8';

$| = 1; 

sub datetime {
    	$datestring = localtime();
}

while () {
    print "\%\{r\}" ."\%\{F#1793d1\}" ."Date: " . &datetime ." \n";
    sleep(1);
}
#`lemonbar`;
