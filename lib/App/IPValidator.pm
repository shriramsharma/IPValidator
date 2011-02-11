package App::IPValidator;

use strict;
use warnings;

use Scalar::Util::Numeric qw/isnum/;

use Exporter qw/import/;

our @EXPORT_OK = qw/validate/;

sub validate {
    my ($ip_address) = @_;

    my @ip_breakup = split( '\.', $ip_address ) if ($ip_address);

    return 0 unless ( scalar(@ip_breakup) ~~ 4 );

    foreach (@ip_breakup) {
        return 0 unless ( isnum($_) && $_ >= 0 && $_ <= 255 );
    }

    return 1;
}
1;
