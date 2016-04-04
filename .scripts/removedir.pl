#!/usr/bin/perl

if($#ARGV + 1 < 1) { 
    $usage; 
} else { 
    if($ARGV[0] eq "f") {
        $f = $ARGV[0];
        $n = $ARGV[1];
    } else { 
        $n = $ARGV[0];
    }

    if(-d $n) { 
        if($f eq 'f') { 
            system("rm -rf $n");
        } else { 
            system("rm -ri $n");
        }
    } else { 
        $usage;
    }
}

sub usage
{ 
    print "Must provide a valid directory name.\n ";
}
