use strict;
use warnings;
use Data::Dumper;

my $array = [
    {
        companyid => 1,
        employeeid => 101,
        employeename => "Mike"
    },
    {
        companyid => 2,
        employeeid => 102,
        employeename => "Luke"
    },
    {
        companyid => 3,
        employeeid => 202,
        employeename => "Anne"
    },
];

my %output;

foreach my $emp (@$array){
    $output{$emp->{companyid}}->{employeename} = $emp->{employeename};
}

foreach (keys %output){
    #print "\n $_ => ".Dumper($output{$_});
}

my %map_ouput;
# my %map_ouput = map {$_->{companyid}->{employeename} = $_->{employeename}} @$array;

map { $map_ouput{$_->{companyid}}->{employeename} = $_->{employeename} } @$array;

print Dumper(%map_ouput);

