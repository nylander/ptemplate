#!/usr/bin/perl 
#===============================================================================
=pod

=head1

         FILE: fasta_wrap.pl

        USAGE: ./fasta_wrap.pl  

  DESCRIPTION: Wrap sequence lines in fasta

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

my $length = 60;

while(<>) {
    my $line = $_;
    chomp($line);
    if ($line =~ /^\s*>/) {
        print $line, "\n";
    }
    else {
        $line =~ s/\S{$length}/$&\n/g;
        print $line, "\n";
    }
}
