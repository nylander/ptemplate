#!/usr/bin/perl 
#===============================================================================
=pod

=head1

         FILE: parse_fasta.pl

        USAGE: ./parse_fasta.pl infile(s) 

  DESCRIPTION: 

      OPTIONS: ---

 REQUIREMENTS: ---

         BUGS: ---

        NOTES: ---

       AUTHOR: Johan Nylander (JN), Johan.Nylander@bils.se

      COMPANY: BILS/NRM

      VERSION: 1.0

      CREATED: 02/26/2014 08:12:31 AM

     REVISION: ---

=cut

#===============================================================================

use strict;
use warnings;
#use Getopt::Long;
use Data::Dumper;

#exec('perldoc', $0) unless (@ARGV);

#my $infile  = q{};
#my $outfile = q{};
#my $VERBOSE = 0;
#my $r = GetOptions("infile=s"  => \$infile,
#                   "verbose!"  => \$VERBOSE,
#                   "outfile=s" => \$outfile,
#                   "help"      => sub { exec("perldoc", $0); exit(0); },
#                  );

while(my $infile = shift(@ARGV)) {

    my $term     = $/; # input record separator;
    my %seq_hash = (); # key:seqid, val:seq

    open my $INFILE, "<", $infile or die "could not open infile '$infile' : $! \n"; 
    $/ = ">";
    while(<$INFILE>) {
        chomp;
        next if($_ eq '');
        my ($id, @sequencelines) = split /\n/;
        foreach my $line (@sequencelines) {
            $seq_hash{$id} .= $line;
        }
    }
    $/ = $term;

    print Dumper(%seq_hash);

}

