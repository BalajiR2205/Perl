# print "Hello, World!";
use strict;
use warnings;
use Data::Dumper;

# Hashes of hashes

my %HoH = (
    flintstones => {
        lead => "fred",
        wife => "wilma",
        pet  => "dino"
    },
    jetsons => {
        lead => "george",
        wife => "jane",
        pet  => "astro"
    },
    simpsons => {
        lead => "homer",
        wife => "marge",
        pet  => "santa's little helper"
    }
);

# Adding new entries
# Get single value
# Get entire sub-hash
# Loop through everything

$HoH{jetsons}{age} = 40;

print Dumper(\%HoH);

print "\n $HoH{jetsons}{lead}";

my $sub_hash = $HoH{jetsons};

print $sub_hash->{wife};

foreach my $item (keys %HoH){
  print "\n lead: $HoH{$item}{lead}";
}

  



