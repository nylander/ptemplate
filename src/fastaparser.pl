#!/usr/bin/perl

# perlmonks.org/?node_id=308170

use strict;
use Data::Dumper;

my @seq;  # array of sequences
my %seq;  # hash lookup of sequences based on id's
{
    local $/ = '>';
    while (<DATA>) {
        s/^>//g;                       # strip out '>' from beginning
        s/>$//g;                       # and end of line
        next if !length($_);           # ignore empty lines
        my ($header) = /^(.*)\n/;      # capture the header
        s/^(.*)\n//;                   # and strip it out
        my @rec = split /\|/, $header; # assuming genbank header format
        s/\n//mg;                      # join the sequence strings
        push @rec, $_;                 # make sequence the last element
        push @seq, \@rec;              # push into array of sequences
        $seq{$rec[1]} = \@rec;         # or store in a hash lookup
    }
}
print Dumper(\@seq);
print Dumper(\%seq);

__DATA__
>gi|2695845|emb|Y13255.1|ABY13255 Acipenser baeri mRNA for immunoglobulin heavy chain, clone ScH 3.3
TGGTTACAACACTTTCTTCTTTCAATAACCACAATACTGCAGTACAATGGGGATTTTAACAGCTCTCTGTATAATAATGA
TACCCCCGCGACCTTCTCGTGGACTGATCAATCTGGAAAAGCTTTT
>gi|2695846|emb|Y13255.1|ABY13255 Acipenser baeri mRNA for immunoglobulin heavy chain, clone ScH 3.3
TGGTTACAACACTTTCTTCTTTCAATAACCACAATACTGCAGTACAATGGGGATTTTAACAGCTCTCTGTATAATAATGA
TACCCCCGCGACCTTCTCGTGGACTGATCAATCTGGAAAAGCTTTT


