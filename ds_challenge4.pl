use strict;
use warnings;
use Data::Dumper;

my $orders = [ 
    { order_id => 1, customer => 'Alice', product => 'Laptop', price => 1000, qty => 1, status => 'delivered' }, 
    { order_id => 2, customer => 'Bob', product => 'Mouse', price => 20, qty => 2, status => 'cancelled' },
    { order_id => 3, customer => 'Alice', product => 'Keyboard', price => 50, qty => 1, status => 'delivered' }, 
    { order_id => 4, customer => 'David', product => 'Laptop', price => 900, qty => 1, status => 'delivered' }, 
    { order_id => 5, customer => 'Alice', product => 'Mouse', price => 25, qty => 3, status => 'pending' }, 
    { order_id => 6, customer => 'Bob', product => 'Keyboard', price => 60, qty => 1, status => 'delivered' }, 
];

my %output;

foreach my $orders (@$orders){
    my $customer = $orders->{customer};
    my $price = $orders->{price};
    my $product = $orders->{product};

    if ($orders->{status} eq 'delivered'){
        $output{$customer}{total_spent} += $price; 
        push @{$output{$customer}{items}}, {
            product => $product,
            qty => $orders->{qty},
            total_price => $orders->{price}
        }
    }
}

print Dumper(%output);

