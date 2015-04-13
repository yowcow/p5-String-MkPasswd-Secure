package String::MkPasswd::Secure;
use 5.008001;
use strict;
use warnings;
use Exporter qw(import);
use List::Util qw(reduce);
use Math::Random::Secure qw(irand);

our $VERSION = "0.01";

our @EXPORT_OK = qw(rand_pattern make_password);

my @lchars   = ('a' .. 'z');
my @uchars   = ('A' .. 'Z');
my @num      = (0 .. 9);
my @all      = (@lchars, @uchars, @num);
my %patterns = (
    'c' => \@lchars,
    'C' => \@uchars,
    'n' => \@num,
);

sub rand_pattern {
    my $pattern = shift;
    reduce { $a . $b }
    map { $patterns{$_}->[irand(scalar @{$patterns{$_}})] }
    split(//, $pattern);
}

sub make_password {
    my $length = shift;
    my $size = @all;
    reduce { $a . $b }
    map { $all[ irand($size) ] }
    1 .. $length;
}

1;

__END__

=encoding utf-8

=head1 NAME

String::MkPasswd::Secure - Simple secure password generator

=head1 SYNOPSIS

    use String::MkPasswd::Secure qw(rand_pattern make_password);

    my $passwd = rand_pattern('Ccn');
    #=> Generates random string with format ^[A-Z][a-z][0-9]$

    my $passwd = make_password(16);
    #=> Generates random string with length 16

=head1 DESCRIPTION

String::MkPasswd::Secure is a secure password generator with L<Math::Random::Secure>
random number generator support.

=head1 FUNCTIONS

=head2 rand_pattern

Creates a random string with specified pattern:

=over 4

=item C

Character A-Z.

=item c

Character a-z.

=item n

Number 0-9.

=back

=head2 make_password

Creates a random string with specified length.

=head1 LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yowcow E<lt>yowcow@cpan.orgE<gt>

=cut

