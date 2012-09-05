#!/usr/bin/env perl

use Modern::Perl;

use autodie;
use IO::Handle;
use File::Spec;

use constant  PATH_Mod  => File::Spec->catfile( qw/ lib  Task  BeLike  LESPEA.pm / );
use constant  PATH_Dist => 'dist.ini';
use constant  BAT_FILE  => 'ppm_install.bat';
use constant  VERSION   => '2.003000';


#  Versions we care about
my $version_override = {
    'Dist::Zilla::PluginBundle::Author::LESPEA' => 1.005001,
    'Modern::Perl'                              => 1.20120521,
};


#  Setup modules
my $pod_section = {
    #'Builders' => {
    #    'Module::Starter' => q{Creates a skeleton of a bare module},
    #},


    'Data Parsing' => {
        'Excel::Writer::XLSX'     => q{Modern XLSX writer},
        'Spreadsheet::ParseExcel' => q{Read Microsoft xls files},
        'Spreadsheet::Read'       => q{Write a wide variety of 'spreadsheets'},
        'Spreadsheet::WriteExcel' => q{Write Microsoft xls files},
        'Spreadsheet::XLSX'       => q{Legacy XLSX writer},
        'Text::CSV_XS'            => q{Parse CSV files, no matter how borked up they are},
    },


    'Database' => {
        #'DBD::ODBC' => q{Use Microsoft ODBC connections},
        'DBD::CSV'   => q{Treat a CSV like a database},
        'DBI'        => q{Base database handler},
    },


    'Dates' => {
        'Date::Calc'                                  => q{Perform date calculations},
        'Date::Manip'                                 => q{Work with dates},
        'DateTime'                                    => q{Base date object},
        'DateTime::Format::DateManip'                 => q{Convert various strings to datetime objects},
        'DateTime::Format::DateParse'                 => q{Convert various strings to datetime objects},
        'DateTime::Format::DB2'                       => q{Convert various strings to datetime objects},
        'DateTime::Format::DBI'                       => q{Convert various strings to datetime objects},
        'DateTime::Format::Duration'                  => q{Convert various strings to datetime objects},
        'DateTime::Format::Duration::DurationString'  => q{Convert various strings to datetime objects},
        'DateTime::Format::Duration::XSD'             => q{Convert various strings to datetime objects},
        'DateTime::Format::Epoch'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::Epoch::ActiveDirectory'    => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::DotNet'             => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::JD'                 => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::Lilian'             => q{Convert various strings to datetime objects},
        'DateTime::Format::Epoch::MacOS'              => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::MJD'                => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::RataDie'            => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::RJD'                => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::TAI64'              => q{Convert various strings to datetime objects},
        #'DateTime::Format::Epoch::TJD'                => q{Convert various strings to datetime objects},
        'DateTime::Format::Epoch::Unix'               => q{Convert various strings to datetime objects},
        'DateTime::Format::Excel'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::Flexible'                  => q{Convert various strings to datetime objects},
        'DateTime::Format::HTTP'                      => q{Convert various strings to datetime objects},
        'DateTime::Format::Human'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::Human::Duration'           => q{Convert various strings to datetime objects},
        #'DateTime::Format::ICal'                      => q{Convert various strings to datetime objects},
        'DateTime::Format::ISO8601'                   => q{Convert various strings to datetime objects},
        'DateTime::Format::MSSQL'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::MySQL'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural'                   => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Aliases'          => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Calc'             => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Compat'           => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Duration'         => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Duration::Checks' => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Expand'           => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Extract'          => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Formatted'        => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Helpers'          => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Lang::Base'       => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Lang::EN'         => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Rewrite'          => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Test'             => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Utils'            => q{Convert various strings to datetime objects},
        'DateTime::Format::Natural::Wrappers'         => q{Convert various strings to datetime objects},
        'DateTime::Format::Oracle'                    => q{Convert various strings to datetime objects},
        'DateTime::Format::Pg'                        => q{Convert various strings to datetime objects},
        'DateTime::Format::RFC3339'                   => q{Convert various strings to datetime objects},
        'DateTime::Format::RFC3501'                   => q{Convert various strings to datetime objects},
        'DateTime::Format::Roman'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::RSS'                       => q{Convert various strings to datetime objects},
        'DateTime::Format::SQLite'                    => q{Convert various strings to datetime objects},
        'DateTime::Format::Strptime'                  => q{Convert various strings to datetime objects},
        'DateTime::Format::Sybase'                    => q{Convert various strings to datetime objects},
        #'DateTime::Format::Variant'                   => q{Convert various strings to datetime objects},
        #'DateTime::Format::W3CDTF'                    => q{Convert various strings to datetime objects},
        'DateTime::Format::WindowsFileTime'           => q{Convert various strings to datetime objects},
        #'DateTime::Format::x509'                      => q{Convert various strings to datetime objects},
        #'DateTime::Format::XMLTV'                     => q{Convert various strings to datetime objects},
        'DateTime::Format::XSD'                       => q{Convert various strings to datetime objects},
    },


    'Development' => {
        'Data::Printer'                    => q{Very nice object printer},
        'Data::Dumper::Perltidy'           => q{Some nice formatting for Data::Dumper},
        'Devel::Cover'                     => q{Make sure we test all our functions},
        'Devel::NYTProf'                   => q{Best profiler available! (by far)},
        'Devel::REPL'                      => q{Nicely interact with perl},
        'Devel::REPL::Plugin::DataPrinter' => q{Let us use a nice object printer},
        'Module::Refresh'                  => q{Reload a module from disk},
        'Module::Reload'                   => q{Reload a module from disk},
        'Perl::Critic'                     => q{Check our files for best practices},
        'Perl::Tidy'                       => q{Generate nice looking perl},
    },


    'Dist::Zilla' => {
        'Dist::Zilla'                               => q{Base dist module},
        'Dist::Zilla::App::Command::cover'          => q{Lets us easily check the test coverage},
        'Dist::Zilla::App::Command::perltidy'       => q{Lets us pretty up our code},
        'Dist::Zilla::App::Command::shell'          => q{Provides an interactive dzil shell},
        'Dist::Zilla::PluginBundle::Author::LESPEA' => q{My dzil config},
        'Dist::Zilla::Shell'                        => q{Provides an interactive dzil shell},
    },


    'Error Checking' => {
        'autodie'   => q{Smart failures in the event a file/dir read/write fails  -  automagic!},
        'Try::Tiny' => q{At least some basic error checking},
    },


    'File handling' => {
        'File::HomeDir'  => q{Makes getting files out of the users' home directory super easy},
        'File::Next'     => q{Iterate over files},
        'File::ShareDir' => q{Auto store/fetch files in the current modules' "private" folder structure once it's installed},
    },


    'HTML stuff' => {
        'Encode'                   => q{Encoding helper},
        'HTML::Entities'           => q{Help us with html entities},
        'HTML::Tree'               => q{Build a huge tree out of the HTML Dom},
        'HTML::TreeBuilder::XPath' => q{Do some xpath lookups for an HTML tree},
        'LWP'                      => q{Get stuff from the internet},
        'LWP::Protocol::https'     => q{Connecto to https sites},
        'PPI::HTML'                => q{Turn perl into a nice html page},
        'Template'                 => q{Template module for generating files safely},
        'WWW::Mechanize'           => q{Automate website crawling},
    },


    'Installers' => {
        'Exporter::Easy'               => q{Makes exporting functions a snap},
        'Module::Build'                => q{Pure perl installer},
        'Module::Install'              => q{Extension of MakeMaker},
        'Module::Install::AuthorTests' => q{Run author tests},
        'Module::Install::ExtraTests'  => q{Run extra tests},
    },


    'JSON' => {
        'JSON'      => q{Basic perl module to parse JSON},
        'JSON::Any' => q{Auto use the best available JSON module},
        'JSON::XS'  => q{Fast C module to parse JSON},
    },


    'Math' => {
        'Math::Big'          => q{Easily compute math with big ints},
        'Math::Big::Factors' => q{Compute factors of a number},
    },


    'Moose' => {
        'Any::Moose'                             => q{Use either moose or mouse},
        'Getopt::Long::Descriptive'              => q{Required for MooseX::App::Cmd},
        'Moose'                                  => q{Base moose module},
        'Moose::Meta::Attribute::Native'         => q{Treat attributes like they were native objects},
        'MooseX::Aliases'                        => q{Make it easier to create objects},
        'MooseX::App'                            => q{Turn your object(s) into an app},
        'MooseX::App::Cmd'                       => q{Extend your moose object as a script},
        'MooseX::Log::Log4perl'                  => q{Easy logging injector},
        'MooseX::Method::Signatures'             => q{Adds greate parameter varification to methods (with a performance price)},
        'MooseX::Singleton'                      => q{Easily create a singleton object (good for caches)},
        'MooseX::StrictConstructor'              => q{Ensure passed hash items are valid attributes},
        'MooseX::Types'                          => q{Basic moose types},
        'MooseX::Types::Common'                  => q{As it sounds, common types for Moose},
        'MooseX::Types::Common::Numeric'         => q{As it sounds, common numeric types for Moose},
        'MooseX::Types::Common::String'          => q{As it sounds, common string types for Moose},
        'MooseX::Types::DateTime::ButMaintained' => q{Datetime type},
        'MooseX::Types::Email'                   => q{Contains an email address},
        'MooseX::Types::IPv4'                    => q{IP Address},
        'MooseX::Types::JSON'                    => q{A JSON string},
        'MooseX::Types::NetAddr::IP'             => q{Alternative to IPv4},
        'MooseX::Types::NetAddr::IP'             => q{Alternative to IPv4},
        'MooseX::Types::PortNumber'              => q{A valid port number},
        'MooseX::Types::Structured'              => q{Lets you write enforce structured attributes better than base Moose},
        'MooseX::Types::URI'                     => q{A valid URI address string},
        'MooseX::Types::UUID'                    => q{A valid UUID string},
        'MouseX::Types'                          => q{Basic mouse types},
    },


    'Networking' => {
        'Net::CIDR::Lite' => q{Great CIDR calculation tool},
        'Net::DNS'        => q{Do some DNS lookups},
        'Net::IP'         => q{Manip IP address},
        'Net::Netmask'    => q{Yet another IP manip tool},
        'Net::Ping'       => q{Simple pinger},
        'NetAddr::MAC'    => q{Process MAC addresses},
    },


    'Testing' => {
        'Test::Fatal'         => q{Make sure something dies okay},
        'Test::File'          => q{Test a file for wanted attributes},
        'Test::LeakTrace'     => q{Don't leak memory},
        'Test::Memory::Cycle' => q{Make sure you don't have any cyclical data structures},
        'Test::Most'          => q{A whole bunch of tests modules},
        'Test::Output'        => q{Make sure a script outputs the correct values},
        'Test::Perl::Critic'  => q{Follow best practices},
        'Test::Pod'           => q{Ensures your POD compiles ok},
        'Test::Pod::Coverage' => q{Make sure you document all of your functions},
        'Test::Taint'         => q{Ensure taint handling is done correctly},
    },


    'Threading' => {
        'AnyEvent'         => q{Use whatever event module is best},
        'Async::Interrupt' => q{Thread helper},
        'Coro'             => q{The best threading module out there},
        'EV'               => q{Enhanced event handling module},
        'Event'            => q{Basic event handling module},
        'Guard'            => q{Thread helper},
    },


    'Utils' => {
        'autovivification'     => q{Makes working with hashes easier},
        'File::Slurp'          => q{Read in an entire file all at once},
        'IO::Scalar'           => q{Turn scalars into io objects},
        'List::AllUtils'       => q{For those of us that can't remember which one to use},
        'List::Gen'            => q{Very good list processing helper},
        'List::MoreUtils'      => q{Provides some advanced-ish list utilities},
        'Locale::US'           => q{Some handy locales for America},
        'Modern::Perl'         => q{Turn on new features},
        'namespace::autoclean' => q{Cleans up the namespace of your modules},
        'Readonly::XS'         => q{Marks variables readonly... better than constant for some things},
        'Regexp::Common'       => q{A ton of precompiled regular expressions},
        'Scalar::Util'         => q{Additional scalar helpers},
        'Task::Weaken'         => q{Let us create weak objects},
        'Text::Trim'           => q{Enhanced trimming capabilities},
    },


    'XML' => {
        'XML::LibXML' => q{Base XML module},
        'XML::SAX'    => q{Stream handling},
        'XML::Simple' => q{Even more simple than twig},
        'XML::Twig'   => q{Make XML easy},
    },


    'YAML' => {
        'YAML'       => q{Basic perl module to parse YAML},
        'YAML::Any'  => q{Auto use the best available YAML module},
        'YAML::Syck' => q{Another fast module to parse YAML},
        'YAML::XS'   => q{Fast C module to parse JSON},
   },
};



#  Module builder
my $begin_txt = <<'__END_START';
use warnings;
use strict;
use utf8;

package Task::BeLike::LESPEA;

# ABSTRACT: Modules that LESPEA uses on a daily basis

=encoding utf8

=head1 Modules

__END_START



my ( $module_txt, %modules );
for  my $section  (sort keys %$pod_section) {
    $module_txt .= sprintf( "=head2 %s\n\n", $section );
    my $module_ref = $pod_section->{ $section };

    $module_txt .= "=for :list\n";

    for  my $module  (sort keys %$module_ref) {
        die "Bad module name: '$module'"  unless  $module =~ qr/
            \A
            (?:
                \w+
                (?:
                    [:]{2}
                    (?=\w)
                )?
            )+
            \z
        /xms;

        my $doc = $module_ref->{ $module };

        $module_txt .= sprintf( qq{= L<%s|%1\$s>\n%s\n}, $module, $doc );
        die "The module $module was listed more than once!"  if  exists $modules{ $module };
        $modules{ $module }++;
    }

    $module_txt .= "\n";
}

$module_txt .= "=cut\n";

#for  my $module  (sort @modules) {
#    $module_txt .= sprintf( qq{use %s;\n}, $module );
#}


my $txt = join '', ( $begin_txt, $module_txt, "\n1;" );

open  my $fh, '>:encoding(utf8)', PATH_Mod;
binmode $fh, ':raw';
$fh->print( $txt );
close $fh;




my $ini_txt = <<'__END_DIST__';
;  Basic author info
name    = Task-BeLike-LESPEA
author  = Adam Lesperance <lespea@gmail.com>
license = Perl_5
version = %s

copyright_holder = Adam Lesperance
copyright_year   = 2012


[@Author::LESPEA]
-remove            = ReportVersions

;release           = real
;
;archive           = 1
;archive_directory = releases
;
;copy_file         = file1 file2
;move_file         = file3 file4
;
;tidy_perl         = 0
;
;add_meta          = 1
;
;compile_synopsis  = 1

;  Test our links since this is a task module
[Test::Pod::No404s]
[Test::Pod::LinkCheck]


[Prereqs]
%s



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;         Non-Standard Win32        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;[Signature]
;sign = always


[Git::Check]
allow_dirty = README.pod

;  Commit all the local changes
[Git::Commit / Commit_Changes]

;  Tag the release
[Git::Tag]
tag_format = release-%%v

;  Finally push the changes to git
[Git::Push]
push_to = origin
__END_DIST__



open $fh, '>:encoding(utf8)', BAT_FILE;
my $module_versions;
for  my $module  (sort keys %modules) {
    $module_versions .= sprintf( qq{%s = %f\n}, $module, $version_override->{$module} || 0);
    $fh->printf( "call ppm install %s\n", $module );
}
close $fh;


open  $fh, '>:encoding(utf8)', PATH_Dist;
binmode $fh, ':raw';
$fh->printf( $ini_txt, VERSION, $module_versions );
close $fh;
