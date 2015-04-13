use strict;
use warnings;
use Test::More;
use Test::Pretty;
use String::MkPasswd::Secure qw(rand_pattern make_password);

subtest 'Test export' => sub {
    ok __PACKAGE__->can('rand_pattern');
    ok __PACKAGE__->can('make_password');
};

subtest 'Test rand_pattern' => sub {
    like rand_pattern('CcncC'), qr|^[A-Z][a-z][0-9][a-z][A-Z]$|;
};

subtest 'Test make_password' => sub {
    is length make_password(4), 4;
    is length make_password(16), 16;
    is length make_password(32), 32;
};

done_testing;
