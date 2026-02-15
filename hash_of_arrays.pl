# print "Hello, World!";
use strict;
use warnings;
use Data::Dumper;

#hashes of hashes

my %HoH = (
    flintstones => [ "fred", "barney" ],
    jetsons     => [ "george", "jane", "elroy" ],
    simpsons    => [ "homer", "marge", "bart" ],
  );
  
# Adding new entries

push @{$HoH{Jerry}}, "george", "kenny";

# Adding to existing arrays

push @{$HoH{jetsons}}, "rolland";

# or modern syntax:

push $HoH{simpsons}->@*, "El";

print Dumper(\%HoH);

# Get entire array
print @{$HoH{simpsons}};

# Get single element
print "\n".$HoH{simpsons}[0];

print Dumper(\%HoH);

# Loop through all families
foreach my $key (keys %HoH){
  print "\n @{$HoH{$key}}";
}


  



