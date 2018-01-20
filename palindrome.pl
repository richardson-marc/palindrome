#!/usr/bin/env perl

#use strict;
#use warnings;

print 'Enter string: ';
chomp(my $string = <STDIN>);

#print $string eq reverse($string) ? 'Yes' : 'No', "\n";

sub check_palindrome {
if ($string == reverse($string) ) {
    print "this is a palindrome\n";
} else {
    print "this is not a palindrome\n";
    my $reverse = reverse($string);
    add_reverse($string,$reverse);
}
}
sub add_reverse {
    print "running add_reverse\n";
    my ($string, $reverse) = @_;
    print "running add_reverse\n";
       print "reverse is $reverse\n";
    my $addition = $string + reverse($string);
    print "addition is $addition\n";
#
    print "addition $addition reverse $reverse\n";
        return ($addition, $reverse);
}

check_palindrome();

sub_eval($addition, $reverse);
#    my $reverse = reverse($addition);
 
#    return ($addition, $reverse, $string);
sub sub_eval {
    my ($addition, $reverse) = @_;
	print "compare $addition $reverse\n";
    if ($addition != $reverse ) {

	print "first time failed\n";
	print "$addition is not a palindrome\n";
#	add_reverse();
	}
}    
       
