requires 'perl', '5.008001';
requires 'Exporter';
requires 'List::Util';
requires 'Math::Random::Secure';

on 'test' => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Pretty';
};

