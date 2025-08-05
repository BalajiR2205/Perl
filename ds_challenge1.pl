use strict;
use warnings;
use Data::Dumper;

my $employees = [
    { 
        companyid => 1,
        employeeid => 101,
        employeename => 'Mike',
        department => 'Sales'
    },
    { 
        companyid => 1,
        employeeid => 102,
        employeename => 'John',
        department => 'HR'
    },
    { 
        companyid =>2,
        employeeid => 201,
        employeename => 'Luke',
        department => 'Finance'
    },
    { 
        companyid => 2,
        employeeid => 202,
        employeename => 'Sarah',
        department => 'HR'
    },
    { 
        companyid => 3,
        employeeid => 101,
        employeename => 'Anne',
        department => 'Sales'
    },
];

my %output;

foreach my $elements (@$employees){
    my $cid = $elements->{companyid};
    my $dept = $elements->{department};

    push @{$output{$cid}{$dept}},  {
        employeeid => $elements->{employeeid},
        employeename => $elements->{employeename}
    }
}

print "\n output=>".Dumper(%output);