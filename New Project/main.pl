#
# Hello World Program in Perl
#
#print "Hello World!\n";
sub calc039{ #FIXED PROTOTYPE!!
my $in = $_[0];
$in = findtier039($in);
print "tier amount: ".$in."\n"; #debug
if ($_[0] <= 1e8)   { return sprintf ('%.2f', $in * 0.25);#Taxed at $0.25 per 100 or portion thereof
} elsif ($_[0] > 1e8 && $_[0] <= 2e8) { return 2.5e5 + sprintf ('%.2f',($in - 1e6) * 0.22);#0.22 per 100 or portion thereof
} elsif ($_[0] > 2e8 && $_[0] <= 3e8) { return 4.7e5 + sprintf ('%.2f',($in - 2e6) * 0.19);#0.19 per 100 or portion thereof
} elsif ($_[0] > 3e8 && $_[0] <= 4e8) { return 6.6e5 + sprintf ('%.2f',($in - 3e6) * 0.16);#0.16 per 100 or portion thereof
    } else {  return 8.2e5 + sprintf ('%.2f',($in - 4e6)  * 0.13); }#0.13 per 100 or...
}
sub findtier039{#FIXED PROTOTYPE!!
my $in = $_[0];
#if ( (sprintf ('%.2f',$in) - sprintf ('%.0f',$in)) > 0.00 ) { $in += 1; } 
if ( (sprintf ('%.2f',$in) - int($in)) > 0.00 ) {print "IN var $in altered \n"; $in += 1;} 
if (sprintf ('%.2f',$in % 100) > 0.00) { return sprintf ('%.2f',((1 + $in / 100) - ($in % 100)/100)); 
    } else { return sprintf ('%.2f',$in /100);}
}

print sprintf ('%.2f',calc039(79525.02) - calc039(78724.93 - 0.99))."\n"; #-99 or -0.99 ??

