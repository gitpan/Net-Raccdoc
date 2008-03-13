#!/usr/bin/perl

use warnings;
use strict;

use lib '../lib';
use Net::Raccdoc;

# Log into ISCABBS as guest
my $bbs   = Net::Raccdoc->new or die;

# Set your current active forum to the Lobby (room 0)
my $forum = $bbs->jump(0)     or die;

# Read the first message
my $message = $bbs->read or die;

# Print out the information
print "Message from: $message->{author}\n";
print $message->{body} . "\n";

# Log out at the end
$bbs->logout;
