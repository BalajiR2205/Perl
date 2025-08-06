use strict;
use warnings;
use Data::Dumper;

my %tasks = ( 'Frontend' => { 'High' => [ 'Fix login bug', 'Improve UI speed' ], 
                            'Medium' => [ 'Add tooltip to buttons' ], 
                            }, 
            'Backend' => { 'High' => [ 'Optimize DB queries' ], 
                            'Low' => [ 'Refactor config loader' ], 
                            }, 
            'DevOps' => { 'Medium' => [ 'Add monitoring alerts', 'Update Dockerfile' ], 
                            'High' => [ 'Migrate to new CI pipeline' ], 
                            }, 
            );
# Output:

# [ { team => 'DevOps', total_tasks => 3, high_priority_tasks => 1, }, 
# { team => 'Frontend', total_tasks => 3, high_priority_tasks => 2, }, 
# { team => 'Backend', total_tasks => 2, high_priority_tasks => 1, }, ]

my @output;

my $index = 0;
# my @tasks;

foreach my $domain (keys %tasks){
    my @tasks;
    my @high_prior;
    #my @total_task;
    my $total_task;
    my $high_priority;
    # print "\n $domain";
    $output[$index]->{team} = $domain,
    my %priority = %{$tasks{$domain}};
    #print "\n tasks: ".Dumper(%tasks);
    

    foreach (keys %priority){
        #print "\n keys: $_";
        push @tasks, @{$priority{$_}};
        #@total_task = $tasks{$_};
        push @high_prior, @{$priority{$_}} if ($_ eq 'High');
        # print "\n Arr: ".Dumper(@tasks);
        $total_task = scalar @tasks;
        $high_priority = scalar @high_prior;
        # if ($_ eq 'High'){
        #     $high_priority = scalar @tasks;
        # }
        # print "\n total_task: $total_task";
    }
    
    $output[$index]->{total_task} = $total_task;
    $output[$index]->{high_priority_tasks} = $high_priority;
    
    
    #print "\n Total task:".Dumper(@total_task);
    $index += 1;
}

# my $total_task = scalar @tasks;

# print "\n arr: ".Dumper(@tasks);

print "\n Out: ".Dumper(@output);

print "\n Out2: @output";
