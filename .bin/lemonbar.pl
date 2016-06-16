#!/usr/bin/perl
#use utf8;
use open ':std', ':encoding(UTF-8)';
#use Unicode::Normalize;

#binmode STDOUT, ':utf8';

$| = 1; 

sub datetime {
    	$datestring = localtime();
}

sub memhome {
    chomp($dfresult = `df -h /dev/sda1`);
    @sda1 = split /\s+/, $dfresult;
    $homestat = "Home: $sda1[9]/$sda1[8] $sda1[11]";
    return $homestat;
}

sub memroot {
    chomp($dfresult = `df -h /dev/sdb2`);
    @sdb2 = split /\s+/, $dfresult;
    $rootstat = "Root: $sdb2[9]/$sdb2[8] $sdb2[11]";
    return $rootstat;
}


while () {
    print "%\{r\}" ."%\{F#1793d1\}" . &memroot ." | " . &memhome ." | " ."Date: " . &datetime ."\n";
    sleep(1);
}
