use strict;
use warnings;
use Data::Dumper;

my $transactions = [ { customer => 'Alice', product => 'Laptop', qty => 1, price => 1000 }, 
                    { customer => 'Alice', product => 'Mouse', qty => 2, price => 20 }, 
                    { customer => 'Alice', product => 'Laptop', qty => 1, price => 1000 }, 
                    { customer => 'Bob', product => 'Keyboard', qty => 1, price => 60 }, 
                    { customer => 'Alice', product => 'Mouse', qty => 1, price => 25 }, 
                    { customer => 'Bob', product => 'Keyboard', qty => 2, price => 55 }, ];

# # %output = ( 'Alice' => { 'Laptop' => { total_qty => 2, total_spent => 2000 }, 
# #                           'Mouse' => { total_qty => 3, total_spent => 65 }, 
#                 }, 
# #             'Bob' => { 'Keyboard' => { total_qty => 3, total_spent => 170 }, 
#                           }, 
#               );

my %output;

foreach my $x (@$transactions){
    my $customer = $x->{customer};
    my $product = $x->{product};
    my $price = $x->{price};
    my $qty = $x->{qty};

    $output{$customer}{$product}{total_qty} += $qty;
    $output{$customer}{$product}{price} += $price;

} 

print "\nOutput: ".Dumper(%output);
