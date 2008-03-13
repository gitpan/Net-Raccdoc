#!/usr/bin/perl

use warnings;
use strict;

use Module::Build;
my $build = Module::Build->new
  (
   module_name => 'Net::Raccdoc',
   license  => 'perl',
   requires => {
                'perl'          => '5.6.1',
                'IO::Socket::INET'  => '>= 0',
               },
  );
$build->create_build_script;