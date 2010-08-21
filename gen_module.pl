#!/usr/bin/env perl

use Modern::Perl;

use autodie;
use File::Spec;

use constant  VERSION => 1.00;
use constant  PATH    => File::Spec->catfile( qw/ lib  Task  BeLike  LESPEA.pm / );


#  Setup modules
my $pod_section = {
    'Builders' => {
        'Module::Starter' => q{Creates a skeleton of a bare module},
    },


    'Data Parsing' => {
        'Spreadsheet::ParseExcel' => q{Read Microsoft xls files},
        'Spreadsheet::Read'       => q{Write a wide variety of 'spreadsheets'},
        'Spreadsheet::WriteExcel' => q{Write Microsoft xls files},
        'Text::CSV_XS'            => q{Parse CSV files, no matter how borked up they are},
    },


    'Database' => {
        'DBI'       => q{Base database handler},
        'DBD::CSV'  => q{Treat a CSV like a database},
        'DBD::ODBC' => q{Use Microsoft ODBC connections},
    },


    'Development' => {
        'Devel::NYTProf' => q{Best profiler available! (by far)},
    },


    'Dist::Zilla' => {
        'Dist::Zilla'                            => q{Basic module},
        'Dist::Zilla::App::Command::cover'       => q{Test your test coverage with Devel::Cover},
        'Dist::Zilla::Plugin::CheckChangesTests' => q{Make sure you're versioning properly},
        'Dist::Zilla::Plugin::CriticTests'       => q{Checks your code for current best practices},
        'Dist::Zilla::Plugin::CompileTests'      => q{Ensures that the module(s) compile correctly},
        'Dist::Zilla::Plugin::InstallGuide'      => q{Create an INSTALL file based on which build system you're using},
        'Dist::Zilla::Plugin::MinimumPerl'       => q{Figures out which version of Perl is the minimum version required},
        'Dist::Zilla::Plugin::PodWeaver'         => q{Dynamically creates POD documentation},
        'Dist::Zilla::Plugin::PortabilityTests'  => q{Ensures your filenames will work cross-platform},
        'Dist::Zilla::Plugin::Prepender'         => q{Adds a header to all your files (usefull small readme)},
        'Dist::Zilla::Plugin::ReadmeFromPod'     => q{Creates a README file from the POD documentation},
        'Dist::Zilla::Plugin::SynopsisTests'     => q{Makes sure the code in your SYNOPSIS passes a syntax check},
        'Dist::Zilla::Plugin::UnusedVarsTests'   => q{Checks your program for any unused variables (probably a bug?)},
        'Perl::MinimumVersion'                   => q{Helper module for dzil plugin},
        'Perl::PrereqScanner'                    => q{Helper module for dzil plugin},
        'Pod::Elemental'                         => q{Helper module for dzil plugin},
        'Pod::Elemental::Transformer::List'      => q{Helper module for dzil plugin},
        'Pod::Weaver'                            => q{Helper module for dzil plugin},
    },


    'Error Checking' => {
        'autodie'   => q{Smart failures in the event a file/dir read/write fails  -  automagic!},
        'Try::Tiny' => q{At least some basic error checking},
    },


    'File handling' => {
        'File::HomeDir'  => q{Makes getting files out of the users' home directory super easy},
        'File::ShareDir' => q{Auto store/fetch files in the current modules' "private" folder structure once it's installed},
    },


    'HTML stuff' => {
        'HTML::Tree'               => q{Build a huge tree out of the HTML Dom},
        'HTML::TreeBuilder::XPath' => q{Do some xpath lookups for an HTML tree},
    },


    'Installers' => {
        'Exporter::Easy'  => q{Makes exporting functions a snap},
        'Module::Build'   => q{Pure perl installer},
        'Module::Install' => q{Extension of MakeMaker},
    },


    'JSON' => {
        'JSON'      => q{Basic perl module to parse JSON},
        'JSON::XS'  => q{Fast C module to parse JSON},
        'JSON::Any' => q{Auto use the best available JSON module},
    },


    'Moose' => {
        'Getopt::Long::Descriptive'  => q{Required for MooseX::App::Cmd},
        'Moose'                      => q{Base moose module},
        'MooseX::App::Cmd'           => q{Extend your moose object as a script},
        'MooseX::Method::Signatures' => q{Adds greate paramater varification to methods (with a performance price)},
        'MooseX::Types::Common'      => q{As it sounds, common types for Moose},
        'MooseX::Types::DateTimeX'   => q{Awesome DateTime parser},
        'MooseX::Types::Structured'  => q{Lets you write enforce structured attributes better than base Moose},
    },


    'Networking' => {
        'Net::CIDR::Lite' => q{Great CIDR calculation tool},
        'Net::DNS'        => q{Do some DNS lookups},
        'Net::IP'         => q{Manip IP address},
        'Net::Netmask'    => q{Yet another IP manip tool},
        'Net::Ping'       => q{Simple pinger},
    },


    'Testing' => {
        'Perl::Critic'                   => q{Follow best practices},
        'Test::Most'                     => q{A whole bunch of tests modules},
        'Test::Perl::Critic'             => q{Follow best practices},
        'Test::Pod'                      => q{Ensures your POD compiles ok},
        'Test::Pod::Coverage'            => q{Make sure you document all of your functions},
        'Perl::Critic::Utils::PPIRegexp' => q{Required for Perl::Critic::Bangs},
        'Perl::Critic::Bangs'            => q{Extra tests that are usefull},
    },


    'Utils' => {
        'namespace::autoclean' => q{Cleans up the namespace of your modules},
        'File::Slurp'          => q{Read in an entire file all at once},
        'List::MoreUtils'      => q{Provides some advanced-ish list utilities},
        'Readonly::XS'         => q{Marks variables readonly... better than constant for some things},
        'Regexp::Common'       => q{A ton of precompiled regular expressions},
    },


    'YAML' => {
        'YAML'       => q{Basic perl module to parse YAML},
        'YAML::Syck' => q{Another fast module to parse YAML},
        'YAML::XS'   => q{Fast C module to parse JSON},
        'YAML::Any'  => q{Auto use the best available YAML module},
   },
};



#  Module builder
my $begin_txt = <<'__END_START';
use warnings;
use strict;

package Task::BeLike::LESPEA;

__END_START



my ( $module_txt, $build_module_txt, @modules );
my $max = 0;
for  my $section  (sort keys %$pod_section) {
    $module_txt .= sprintf( "\n=head2 %s\n\n", $section );
    my $module_ref = $pod_section->{ $section };

    for  my $module  (sort keys %$module_ref) {
        my $doc = $module_ref->{ $module };
        $max    = length $module  if  length $module > $max;

        $module_txt .= sprintf( qq{=head3 L<%s>\n\n%s\n\n}, $module, $doc );
        push @modules, $module;
    }
}
$max += 2;

for  my $module  (sort @modules) {
    $build_module_txt .= sprintf( qq{        %-*s => 0,\n}, $max, qq{'$module'} );
}


my $txt = join '', ( $begin_txt, $version_txt, $mid_txt, $module_txt, $end_txt );

open  my $fh, '>', PATH;
print $fh $txt;
close $fh;
