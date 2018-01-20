#!/usr/bin/env perl

use strict;
use warnings;

my $addition;
my $reverse;
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
    print "$addition\n";
    check_palindrome($addition);
        return ($addition, $reverse);
}

check_palindrome($string);

       
