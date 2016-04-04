#!/usr/bin/perl

$numargs = $#ARGV + 1;

if($numargs < 1) { &usage; }

$op = $ARGV[0];

switch($op)
{ 
    case 'home' { 
    }

    case 'lab' {
    system("xrandr --output HDMI1 --off --output LVDS1 --mode 1366x768 --pos 1680x0 --rotate normal --output VIRTUAL1 --off --output DP1 --off --output VGA1 --mode 1080x1920 --pos 3046x0 --rotate normal");
    }

    case 'left' { 
    }

    case 
}

sub usage
{ 
    print "\n";
}
