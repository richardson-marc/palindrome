#!/usr/bin/env perl

use strict;
use warnings;

my $addition;
my $reverse;
# set $debug=1 if you want more verbosity...
my $debug;

print 'Enter string: ';
chomp(my $string = <STDIN>);


sub check_palindrome {
    my($string) = @_;
if ($string == reverse($string) ) {
    print "$string is a palindrome\n";
    exit;
} else {
    print "$string is not a palindrome\n" if $debug;
    my $reverse = reverse($string);
    add_reverse($string,$reverse);
}
}
sub add_reverse {
    my ($string, $reverse) = @_;
    my $addition = $string + reverse($string);
    print "adding $string to $reverse (reverse of $string)\n" if $debug;
    print "$addition\n";
    print "$addition is the sum of $string + $reverse \n" if $debug;
    check_palindrome($addition);
        return ($addition, $reverse);
}

check_palindrome($string);

       
