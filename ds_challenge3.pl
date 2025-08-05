use strict;
use warnings;
use Data::Dumper;

my $worklogs = [
    {
        employeeid => 101,
        employeename => 'Mike',
        date => '2025-08-01',
        hours => '4'
    },
    {
        employeeid => 101,
        employeename => 'Mike',
        date => '2025-08-02',
        hours => '5'
    },
    {
        employeeid => 102,
        employeename => 'John',
        date => '2025-08-01',
        hours => '8'
    },
    {
        employeeid => 101,
        employeename => 'Mike',
        date => '2025-08-03',
        hours => '6'
    },
    {
        employeeid => 102,
        employeename => 'John',
        date => '2025-08-03',
        hours => '4'
    },
];

my %output;

foreach my $emp (@$worklogs){
    my $empid = $emp->{employeeid};
    my $name = $emp->{employeename};
    my $date = $emp->{date};
    my $hrs = $emp->{hours};

    $output{$empid}{employeename} = $name;
    $output{$empid}{total_hours} += $hrs;

    $output{$empid}{_date_seen}{$date} = 1;
    
}

foreach my $id (keys %output){
    my @dates = sort keys %{$output{$id}{_date_seen}};
    $output{$id}{days_worked} = \@dates;
    delete $output{$id}{_date_seen};
}

print Dumper(%output);