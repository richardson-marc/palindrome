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
#       print "reverse is $reverse\n";
    my $addition = $string + reverse($string);
    print "$addition\n";
    check_palindrome($addition);
    print "addition $addition reverse $reverse\n";
        return ($addition, $reverse);
}

check_palindrome($string);

sub_eval($addition, $reverse);
sub sub_eval {
    my ($addition, $reverse) = @_;
	print "compare $addition $reverse\n";
    if ($addition != $reverse ) {

	print "first time failed\n";
	print "$addition is not a palindrome\n";
	}
}    
       
