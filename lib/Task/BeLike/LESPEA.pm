use warnings;
use strict;

package Task::BeLike::LESPEA;

#ABSTRACT: Modules that LESPEA uses on a daily basis


=head2 Builders

=head3 L<Module::Starter>

Creates a skeleton of a bare module


=head2 Data Parsing

=head3 L<Spreadsheet::ParseExcel>

Read Microsoft xls files

=head3 L<Spreadsheet::Read>

Write a wide variety of 'spreadsheets'

=head3 L<Spreadsheet::WriteExcel>

Write Microsoft xls files

=head3 L<Text::CSV_XS>

Parse CSV files, no matter how borked up they are


=head2 Database

=head3 L<DBD::CSV>

Treat a CSV like a database

=head3 L<DBD::ODBC>

Use Microsoft ODBC connections

=head3 L<DBI>

Base database handler


=head2 Dates

=head3 L<DateTime::Format::DateParse>

Takes a string and makes a DateTime object out of it


=head2 Development

=head3 L<Devel::NYTProf>

Best profiler available! (by far)


=head2 Dist::Zilla

=head3 L<Dist::Zilla>

Basic module

=head3 L<Dist::Zilla::App::Command::cover>

Test your test coverage with Devel::Cover

=head3 L<Dist::Zilla::Plugin::Bugtracker>

Adds all the CPAN links to perldoc

=head3 L<Dist::Zilla::Plugin::CheckChangeLog>

Make sure the changes file is up-to-date

=head3 L<Dist::Zilla::Plugin::CheckChangesHasContent>

Make sure the changes file actually has content

=head3 L<Dist::Zilla::Plugin::CheckChangesTests>

Make sure you're versioning properly

=head3 L<Dist::Zilla::Plugin::CompileTests>

Ensures that the module(s) compile correctly

=head3 L<Dist::Zilla::Plugin::CriticTests>

Checks your code for current best practices

=head3 L<Dist::Zilla::Plugin::Git>

Used to check/sync with github

=head3 L<Dist::Zilla::Plugin::HasVersionTests>

Make sure the modules have version info

=head3 L<Dist::Zilla::Plugin::InstallGuide>

Create an INSTALL file based on which build system you're using

=head3 L<Dist::Zilla::Plugin::KwaliteeTests>

General quality tests

=head3 L<Dist::Zilla::Plugin::MinimumPerl>

Figures out which version of Perl is the minimum version required

=head3 L<Dist::Zilla::Plugin::MinimumVersionTests>

Make sure the code works with provided versions

=head3 L<Dist::Zilla::Plugin::PodSpellingTests>

Check spelling of perldoc

=head3 L<Dist::Zilla::Plugin::PodWeaver>

Dynamically creates POD documentation

=head3 L<Dist::Zilla::Plugin::PortabilityTests>

Ensures your filenames will work cross-platform

=head3 L<Dist::Zilla::Plugin::Prepender>

Adds a header to all your files (usefull small readme)

=head3 L<Dist::Zilla::Plugin::ReadmeFromPod>

Creates a README file from the POD documentation

=head3 L<Dist::Zilla::Plugin::ReadmeMarkdownFromPod>

Create markdown from Readme

=head3 L<Dist::Zilla::Plugin::ReportVersions>

List all the version of modules you're using

=head3 L<Dist::Zilla::Plugin::Repository>

List github repo in perldoc

=head3 L<Dist::Zilla::Plugin::SynopsisTests>

Makes sure the code in your SYNOPSIS passes a syntax check

=head3 L<Dist::Zilla::Plugin::UnusedVarsTests>

Checks your program for any unused variables (probably a bug?)

=head3 L<Perl::MinimumVersion>

Helper module for dzil plugin

=head3 L<Perl::PrereqScanner>

Helper module for dzil plugin

=head3 L<Pod::Coverage::TrustPod>

Helper module for dzil plugin

=head3 L<Pod::Elemental::Transformer::List>

Helper module for dzil plugin

=head3 L<Pod::Weaver>

Helper module for dzil plugin

=head3 L<Pod::Weaver::Section::Support>

Helper module for dzil plugin

=head3 L<Test::CPAN::Meta>

Helper module for dzil plugin

=head3 L<Test::Perl::Critic>

Helper module for dzil plugin


=head2 Error Checking

=head3 L<Try::Tiny>

At least some basic error checking

=head3 L<autodie>

Smart failures in the event a file/dir read/write fails  -  automagic!


=head2 File handling

=head3 L<File::HomeDir>

Makes getting files out of the users' home directory super easy

=head3 L<File::ShareDir>

Auto store/fetch files in the current modules' "private" folder structure once it's installed


=head2 HTML stuff

=head3 L<HTML::Tree>

Build a huge tree out of the HTML Dom

=head3 L<HTML::TreeBuilder::XPath>

Do some xpath lookups for an HTML tree


=head2 Installers

=head3 L<Exporter::Easy>

Makes exporting functions a snap

=head3 L<Module::Build>

Pure perl installer

=head3 L<Module::Install>

Extension of MakeMaker

=head3 L<Module::Install::AuthorTests>

Run author tests

=head3 L<Module::Install::ExtraTests>

Run extra tests


=head2 JSON

=head3 L<JSON>

Basic perl module to parse JSON

=head3 L<JSON::Any>

Auto use the best available JSON module

=head3 L<JSON::XS>

Fast C module to parse JSON


=head2 Math

=head3 L<Math::Big>

Easily compute math with big ints

=head3 L<Math::Big::Factors>

Compute factors of a number


=head2 Moose

=head3 L<Getopt::Long::Descriptive>

Required for MooseX::App::Cmd

=head3 L<Moose>

Base moose module

=head3 L<MooseX::App::Cmd>

Extend your moose object as a script

=head3 L<MooseX::Method::Signatures>

Adds greate paramater varification to methods (with a performance price)

=head3 L<MooseX::Types::Common>

As it sounds, common types for Moose

=head3 L<MooseX::Types::Structured>

Lets you write enforce structured attributes better than base Moose


=head2 Networking

=head3 L<Net::CIDR::Lite>

Great CIDR calculation tool

=head3 L<Net::DNS>

Do some DNS lookups

=head3 L<Net::IP>

Manip IP address

=head3 L<Net::Netmask>

Yet another IP manip tool

=head3 L<Net::Ping>

Simple pinger


=head2 Testing

=head3 L<Perl::Critic>

Follow best practices

=head3 L<Test::Most>

A whole bunch of tests modules

=head3 L<Test::Perl::Critic>

Follow best practices

=head3 L<Test::Pod>

Ensures your POD compiles ok

=head3 L<Test::Pod::Coverage>

Make sure you document all of your functions


=head2 Utils

=head3 L<File::Slurp>

Read in an entire file all at once

=head3 L<List::MoreUtils>

Provides some advanced-ish list utilities

=head3 L<Readonly::XS>

Marks variables readonly... better than constant for some things

=head3 L<Regexp::Common>

A ton of precompiled regular expressions

=head3 L<namespace::autoclean>

Cleans up the namespace of your modules


=head2 YAML

=head3 L<YAML>

Basic perl module to parse YAML

=head3 L<YAML::Any>

Auto use the best available YAML module

=head3 L<YAML::Syck>

Another fast module to parse YAML

=head3 L<YAML::XS>

Fast C module to parse JSON

=cut

use DBD::CSV;
use DBD::ODBC;
use DBI;
use DateTime::Format::DateParse;
use Devel::NYTProf;
use Dist::Zilla;
use Dist::Zilla::App::Command::cover;
use Dist::Zilla::Plugin::Bugtracker;
use Dist::Zilla::Plugin::CheckChangeLog;
use Dist::Zilla::Plugin::CheckChangesHasContent;
use Dist::Zilla::Plugin::CheckChangesTests;
use Dist::Zilla::Plugin::CompileTests;
use Dist::Zilla::Plugin::CriticTests;
use Dist::Zilla::Plugin::Git;
use Dist::Zilla::Plugin::HasVersionTests;
use Dist::Zilla::Plugin::InstallGuide;
use Dist::Zilla::Plugin::KwaliteeTests;
use Dist::Zilla::Plugin::MinimumPerl;
use Dist::Zilla::Plugin::MinimumVersionTests;
use Dist::Zilla::Plugin::PodSpellingTests;
use Dist::Zilla::Plugin::PodWeaver;
use Dist::Zilla::Plugin::PortabilityTests;
use Dist::Zilla::Plugin::Prepender;
use Dist::Zilla::Plugin::ReadmeFromPod;
use Dist::Zilla::Plugin::ReadmeMarkdownFromPod;
use Dist::Zilla::Plugin::ReportVersions;
use Dist::Zilla::Plugin::Repository;
use Dist::Zilla::Plugin::SynopsisTests;
use Dist::Zilla::Plugin::UnusedVarsTests;
use Exporter::Easy;
use File::HomeDir;
use File::ShareDir;
use File::Slurp;
use Getopt::Long::Descriptive;
use HTML::Tree;
use HTML::TreeBuilder::XPath;
use JSON;
use JSON::Any;
use JSON::XS;
use List::MoreUtils;
use Math::Big;
use Math::Big::Factors;
use Module::Build;
use Module::Install;
use Module::Install::AuthorTests;
use Module::Install::ExtraTests;
use Module::Starter;
use Moose;
use MooseX::App::Cmd;
use MooseX::Method::Signatures;
use MooseX::Types::Common;
use MooseX::Types::Structured;
use Net::CIDR::Lite;
use Net::DNS;
use Net::IP;
use Net::Netmask;
use Net::Ping;
use Perl::Critic;
use Perl::MinimumVersion;
use Perl::PrereqScanner;
use Pod::Coverage::TrustPod;
use Pod::Elemental::Transformer::List;
use Pod::Weaver;
use Pod::Weaver::Section::Support;
use Readonly::XS;
use Regexp::Common;
use Spreadsheet::ParseExcel;
use Spreadsheet::Read;
use Spreadsheet::WriteExcel;
use Test::CPAN::Meta;
use Test::Most;
use Test::Perl::Critic;
use Test::Perl::Critic;
use Test::Pod;
use Test::Pod::Coverage;
use Text::CSV_XS;
use Try::Tiny;
use YAML;
use YAML::Any;
use YAML::Syck;
use YAML::XS;
use autodie;
use namespace::autoclean;


1;