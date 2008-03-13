#!/usr/bin/perl

use warnings;
use strict;

use Test::Simple tests => 7;

use Net::Raccdoc;

our $bbs = new Net::Raccdoc;
ok( defined $bbs );                 # check that we got something
ok( $bbs->isa('Net::Raccdoc') );    # and it is the right class
our %forums = $bbs->forums;
ok( scalar( keys(%forums) ) > 0 );    # See if we can see forums
my $lobby;
ok( $lobby = $bbs->jump(0) );         # Everyone should be able to jump
                                      # to the lobby.
ok( $lobby->{lastnote} > 0 );         # The newest post in the lobby
                                      # should have a reasonable number
ok( my $post = $bbs->read );

# Read the newest Lobby> post

ok( $bbs->logout );                   # Verify that we can log out
