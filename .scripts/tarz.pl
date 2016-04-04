#!/usr/bin/perl
use Switch;
## (1) quit unless we have the corret number of args
$num_args = $#ARGV + 1;
$op = $ARGV[0];

if($num_args < 2 || length $op > 1) { &usage; }

$file = $filefull = $ARGV[1];
$file =~ s{\.[^.]+$}{};

switch($op)
{
    case 'e'{ print"creating archive..\n"; system("tar -xvf $filefull");}
    case 't'{ print"extracting archive..\n"; system("tar -cvf $file.tar $filefull");}
    case 'l'{ print"listing archive..\n"; system("tar -tvf $filefull");}
    case 'x'{ print"compressing archive..\n"; system("tar -xvf $filefull");}
    case 'c'{ print"uncompressing archive..\n"; system("tar -czvf $file.tar.gz $filefull");}
    case 'v'{ print"listing archive..\n"; system("tar -ztvf $filefull");}
    else { &usage; }
}

sub usage
{
    print "\nUsage: tarz.pl args filename\n";
    print "Allowable Arguements: e/t/l/x/c\n";
    print "e - extract uncompressed archive\n";
    print "t - create uncompressed archive\n";
    print "l - list an archives contents\n";
    print "x - extract compressed archive\n";
    print "c - create compressed archive\n";
    exit
}
