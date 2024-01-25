#!/usr/bin/env perl

=pod

=head2

Read fasta formatted input from stdin and print tab separated id and sequence to stdout using pure perl (no bioperl)

=cut

use strict;
use warnings;

my $term = $/;
my %seq_hash = ();
$/ = ">";
while (<>) {
    chomp;
    next if($_ eq '');
    my ($id, @sequencelines) = split /\n/;
    foreach my $line (@sequencelines) {
        $seq_hash{$id} .= $line;
    }
}
$/ = $term;
while ( my ($header, $sequence) = each %seq_hash ) {
    print $header, "\t", $sequence, "\n";
}

