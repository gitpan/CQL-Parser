package CQL::Node;

use strict;
use warnings;
use base qw( Clone );
use Carp qw( croak );
use UNIVERSAL qw( isa );

=head1 NAME

CQL::Node - base class for nodes in a CQL parse tree

=head1 SYNOPSIS

    n/a

=head1 DESCRIPTION

All the CQL node classes inherit from CQL::Node. CQL::Node
essentially gurantees that its children implements some methods. 

=head2 toCQL()

=cut

sub toCQL {
    my $self = shift;
    ## poor mans interface
    croak( ref($self) . " forgot to implement toCQL()!!!" );
}

=head2 toXCQL()

=cut

sub toXCQL {
    my $self = shift;
    croak( ref($self) . " forgot to implement toXCQL()!!!" );
}

=head2 toSwish()

=cut 

sub toSwish {
    my $self = shift;
    ## poor mans interface
    croak( ref($self) . " forgot to implement toSwish()!!!" );
}

=head2 clone()

Creates a copy of a node, and it's children. Useful if you want to modify
the tree but kee a copy of the original. 

=cut

1;
