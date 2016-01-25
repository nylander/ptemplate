#!/usr/bin/perl 
#===============================================================================
=pod

=head1

         FILE: fasta_unwrap.pl

        USAGE: ./fasta_unwrap.pl  

  DESCRIPTION: Un-wrap sequence lines in fasta

      OPTIONS: ---

 REQUIREMENTS: ---

         BUGS: ---

        NOTES: ---

       AUTHOR: Johan Nylander (JN), Johan.Nylander@bils.se

      COMPANY: BILS/NRM

      VERSION: 1.0

      CREATED: 01/12/2016 04:25:36 PM

     REVISION: ---

=cut

#===============================================================================

$/ = '>';
while(<>) {
    chomp;
    next if ($_ eq '');
    my ($id, @seqlines) = split /\n/;
    print '>', $id, "\n";
    my $seq = '';
    foreach my $line (@seqlines) {
        $seq .= $line;
    }
    print $seq, "\n";
}
