#!/usr/bin/perl -w
# Author: Ashok K. Sharma

use strict;

#NS500187:24:HCTFHAFXX:1:11101:7707:1052	89	622048	146	42	151M	=	146	0	CGGGATAAATCTCAATGTCGCGATTGTAGTTAATAGCGATCTTGTTGTAGGCTTCAAGGTGGAAGGGGTCAATCATGTTGACATCGTTGAGGTCGGCTGTTGCGGCCTCATAGGCAATGTTAACGGGGTGCTT
#TAGGGGTAAGTTCCAAAC	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII	AS:i:0	XN:i:0	XM:i:0	XO:i:0	XG:i:0	NM:i:0	#MD:Z:151	YT:Z:UP
#NS500187:24:HCTFHAFXX:1:11101:11041:1059	89	545448	34	0	132M14I5M	=	34	0	ACAATATGGCAAGCCGAGGTGAGCACCTTCTTGTTCAGCAGCACATCATCCCAAGTGATGTCCGTCTTATCAGTAATCTTACTGATGAGCGGAACCAGTATCTTGCGACACAGAAAA
#TCGCTCAACATCGCCAAGAGGATGGCAGTAATGG	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII	AS:i:-71	XN:i:0	XM:i:4	XO:i:1	XG:i:
#14	NM:i:18	MD:Z:110A13G9G0A1	YT:Z:UP
#NS500187:24:HCTFHAFXX:1:11101:11751:1072	153	576974	40	42	151M	=	40	0	ACCTACGAGGATTTCGAGGGCTTGATGAAGTCGCTGATGAATGACGAAGCTTTCCTGAAGCAGGCTGGCGATGAGGCTGGTGCTTTCGTAGCGAGCCTTTCGGGAGCCACAGACAAGGTTTTGGC
#TAAGGTTACATTATAATATATAAAAG	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII	AS:i:0	XN:i:0	XM:i:0	XO:i:0	XG:i:0	NM:i:0	MD:Z:
#151	YT:Z:UP
#NS500187:24:HCTFHAFXX:1:11101:6645:1057	81	632428	46	42	149M	646710	1287	0	AACTACAGCGATAGCTATCAGCTCATCACCGAGGACGGATACGTGAGTGGCGACTGGTATCGGATTTCAGCCACTACAGCCCACCAGGCAGGCTTCGTCACCCCGTACGCCATGAGCGAGCCGGGAGAGGACT
#TCGCCGAGATGATGTC	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII	AS:i:0	XN:i:0	XM:i:0	XO:i:0	XG:i:0	NM:i:0	#MD:Z:149	YT:Z:UP
#NS500187:24:HCTFHAFXX:1:11101:6645:1057	161	646710	1287	0	129M18I4M	632428	46	0	CCATGGTGCTCGGTACGGCAGAGGGCGGCTACGTCATCACGCTGTACATGGTAAACGAGCTCTCGGACAGGATGTTGCACGACTACGCCCCGATGAACGAGTACTACTTCCACACCATGCACCAC
#GAGTTCACGCACATCCTCAACCAGAA	IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII	AS:i:-83	XN:i:0	XM:i:4	XO:i:1	XG:i:18	NM:i:
#22	MD:Z:89A39T0C1C0	YT:Z:UP


my $input = <$ARGV[0]>;
open (BW_OUTPUT, $input) || die "Cannot open the file\n";

my $hash={};

while (chomp(my $line = <BW_OUTPUT>))
{
	my @x = split ("\t", $line);
	my $total_match = 0;
        my $Matches = 0;
        my $Mismatches = 0;
        my $Deletions = 0;
        my $read = $x[0];
        my $target = $x[2];
        (my @tm) = $x[5] =~ /(\d*)M/g;
        foreach my $tm (@tm)
        {
                $total_match += $tm
        }
        (my $IDENTITY) = $line =~ /MD:Z:(\S+)/;
        $Mismatches = ($IDENTITY =~ tr/A-Z/_/);
        if ($IDENTITY =~ /\^/)
        {
                $IDENTITY =~ s/\^//g;
        }
	my @iden_count = split ("_", $IDENTITY);
        foreach my $C (@iden_count)
        {
                if ($C ne "")
                {
                $Matches+=$C;
                }
        }
	my @T = split ("", $x[9]);
	
	my $total_length = scalar(@T);
#	print $Matches;<stdin>;
#	print $total_length;<stdin>;
	my $identity_percent = ($Matches/$total_length)*100;
#	print $identity_percent;<stdin>;
	if ($identity_percent >= 50)
	{
		$hash->{$x[0]}++;
	}
}

#>NS500187:24:HCTFHAFXX:1:11101:7707:1052 1:N:0:TGCAGCTA+TCTTACGC
#GTTTGGAACTTACCCCTAAAGCACCCCGTTAACATTGCCTATGAGGCCGCAACAGCCGACCTCAACGATGTCAACATGATTGACCCCTTCCACCTTGAAGCCTACAACAAGATCGCTATTAACTACAATCGCGACATTGAGATTTATCCCG

my $input2 = <$ARGV[1]>;
open (IN1, $input2) || die "Cannot open the file\n";

open (OUT1, ">$input2.singletons") || die "Cannot opent he file\n";

while (chomp(my $line2 = <IN1>))
{
	if ($line2 =~ />/)
	{
		(my $ID) = $line2 =~ />(\S+)/;
		my $ann = $line2;
		chomp( $line2 = <IN1>);
		my $seq = $line2;
		if (exists($hash->{$ID}))
		{
			next
		}
		else {
			print OUT1 $ann."\n".$seq."\n";
		}
	}
}

my $input3 = <$ARGV[2]>;
open (IN2, $input3) || die "Cannot open the file\n";

open (OUT2, ">$input3.singletons") || die "Cannot open the file\n";

while (chomp(my $line = <IN2>))
{
	if ($line =~ />/)
	{
		(my $ID) = $line =~ />(\S+)/;
		my $ann = $line;
		chomp($line = <IN2>);
		my $seq = $line;
		if (exists($hash->{$ID}))
		{
			next
		}
		else {
			print OUT2 $ann."\n".$seq."\n";
		}
	}
}	 

