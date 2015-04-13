[![Build Status](https://travis-ci.org/yowcow/p5-String-MkPasswd-Secure.svg?branch=master)](https://travis-ci.org/yowcow/p5-String-MkPasswd-Secure)
# NAME

String::MkPasswd::Secure - Simple secure password generator

# SYNOPSIS

    use String::MkPasswd::Secure qw(rand_pattern make_password);

    my $passwd = rand_pattern('Ccn');
    #=> Generates random string with format ^[A-Z][a-z][0-9]$

    my $passwd = make_password(16);
    #=> Generates random string with length 16

# DESCRIPTION

String::MkPasswd::Secure is a secure password generator with [Math::Random::Secure](https://metacpan.org/pod/Math::Random::Secure)
random number generator support.

# FUNCTIONS

## rand\_pattern

Creates a random string with specified pattern:

- C

    Character A-Z.

- c

    Character a-z.

- n

    Number 0-9.

## make\_password

Creates a random string with specified length.

# LICENSE

Copyright (C) yowcow.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

yowcow <yowcow@cpan.org>
