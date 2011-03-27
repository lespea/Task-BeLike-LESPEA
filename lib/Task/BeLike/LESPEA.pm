use warnings;
use strict;
use utf8;

package Task::BeLike::LESPEA;

# ABSTRACT: Modules that LESPEA uses on a daily basis

=encoding utf8

=head2 Builders

=for :list
= L<Module::Starter|Module::Starter>
Creates a skeleton of a bare module

=head2 Data Parsing

=for :list
= L<Spreadsheet::ParseExcel|Spreadsheet::ParseExcel>
Read Microsoft xls files
= L<Spreadsheet::Read|Spreadsheet::Read>
Write a wide variety of 'spreadsheets'
= L<Spreadsheet::WriteExcel|Spreadsheet::WriteExcel>
Write Microsoft xls files
= L<Text::CSV_XS|Text::CSV_XS>
Parse CSV files, no matter how borked up they are

=head2 Database

=for :list
= L<DBD::CSV|DBD::CSV>
Treat a CSV like a database
= L<DBD::ODBC|DBD::ODBC>
Use Microsoft ODBC connections
= L<DBI|DBI>
Base database handler

=head2 Dates

=for :list
= L<DateTime::Format::DateParse|DateTime::Format::DateParse>
Takes a string and makes a DateTime object out of it

=head2 Development

=for :list
= L<Devel::NYTProf|Devel::NYTProf>
Best profiler available! (by far)

=head2 Dist::Zilla

=for :list
= L<Dist::Zilla|Dist::Zilla>
Basic module
= L<Dist::Zilla::Plugin::Authority|Dist::Zilla::Plugin::Authority>
Adds an authority context to the version
= L<Dist::Zilla::Plugin::Bugtracker|Dist::Zilla::Plugin::Bugtracker>
Adds all the CPAN links to perldoc
= L<Dist::Zilla::Plugin::CheckChangeLog|Dist::Zilla::Plugin::CheckChangeLog>
Make sure the changes file is up-to-date
= L<Dist::Zilla::Plugin::CheckChangesHasContent|Dist::Zilla::Plugin::CheckChangesHasContent>
Make sure the changes file actually has content
= L<Dist::Zilla::Plugin::CheckChangesTests|Dist::Zilla::Plugin::CheckChangesTests>
Make sure you're versioning properly
= L<Dist::Zilla::Plugin::CompileTests|Dist::Zilla::Plugin::CompileTests>
Ensures that the module(s) compile correctly
= L<Dist::Zilla::Plugin::CriticTests|Dist::Zilla::Plugin::CriticTests>
Checks your code for current best practices
= L<Dist::Zilla::Plugin::HasVersionTests|Dist::Zilla::Plugin::HasVersionTests>
Make sure the modules have version info
= L<Dist::Zilla::Plugin::Homepage|Dist::Zilla::Plugin::Homepage>
Adds the homepage to the distmeta info
= L<Dist::Zilla::Plugin::InstallGuide|Dist::Zilla::Plugin::InstallGuide>
Create an INSTALL file based on which build system you're using
= L<Dist::Zilla::Plugin::KwaliteeTests|Dist::Zilla::Plugin::KwaliteeTests>
General quality tests
= L<Dist::Zilla::Plugin::MinimumPerl|Dist::Zilla::Plugin::MinimumPerl>
Figures out which version of Perl is the minimum version required
= L<Dist::Zilla::Plugin::MinimumVersionTests|Dist::Zilla::Plugin::MinimumVersionTests>
Make sure the code works with provided versions
= L<Dist::Zilla::Plugin::PodWeaver|Dist::Zilla::Plugin::PodWeaver>
Dynamically creates POD documentation
= L<Dist::Zilla::Plugin::PortabilityTests|Dist::Zilla::Plugin::PortabilityTests>
Ensures your filenames will work cross-platform
= L<Dist::Zilla::Plugin::Prepender|Dist::Zilla::Plugin::Prepender>
Adds a header to all your files (usefull small readme)
= L<Dist::Zilla::Plugin::ReadmeFromPod|Dist::Zilla::Plugin::ReadmeFromPod>
Creates a README file from the POD documentation
= L<Dist::Zilla::Plugin::ReportVersions|Dist::Zilla::Plugin::ReportVersions>
List all the version of modules you're using
= L<Dist::Zilla::Plugin::Repository|Dist::Zilla::Plugin::Repository>
List github repo in perldoc
= L<Dist::Zilla::Plugin::SynopsisTests|Dist::Zilla::Plugin::SynopsisTests>
Makes sure the code in your SYNOPSIS passes a syntax check
= L<Dist::Zilla::Plugin::UnusedVarsTests|Dist::Zilla::Plugin::UnusedVarsTests>
Checks your program for any unused variables (probably a bug?)
= L<Dist::Zilla::PluginBundle::Author::LESPEA|Dist::Zilla::PluginBundle::Author::LESPEA>
My dzil config
= L<Perl::MinimumVersion|Perl::MinimumVersion>
Helper module for dzil plugin
= L<Perl::PrereqScanner|Perl::PrereqScanner>
Helper module for dzil plugin
= L<Pod::Coverage::TrustPod|Pod::Coverage::TrustPod>
Helper module for dzil plugin
= L<Pod::Elemental::Transformer::List|Pod::Elemental::Transformer::List>
Helper module for dzil plugin
= L<Pod::Weaver|Pod::Weaver>
Helper module for dzil plugin
= L<Pod::Weaver::Section::Support|Pod::Weaver::Section::Support>
Helper module for dzil plugin
= L<Test::CPAN::Meta|Test::CPAN::Meta>
Helper module for dzil plugin

=head2 Error Checking

=for :list
= L<Try::Tiny|Try::Tiny>
At least some basic error checking
= L<autodie|autodie>
Smart failures in the event a file/dir read/write fails  -  automagic!

=head2 File handling

=for :list
= L<File::HomeDir|File::HomeDir>
Makes getting files out of the users' home directory super easy
= L<File::ShareDir|File::ShareDir>
Auto store/fetch files in the current modules' "private" folder structure once it's installed

=head2 HTML stuff

=for :list
= L<HTML::Tree|HTML::Tree>
Build a huge tree out of the HTML Dom
= L<HTML::TreeBuilder::XPath|HTML::TreeBuilder::XPath>
Do some xpath lookups for an HTML tree

=head2 Installers

=for :list
= L<Exporter::Easy|Exporter::Easy>
Makes exporting functions a snap
= L<Module::Build|Module::Build>
Pure perl installer
= L<Module::Install|Module::Install>
Extension of MakeMaker
= L<Module::Install::AuthorTests|Module::Install::AuthorTests>
Run author tests
= L<Module::Install::ExtraTests|Module::Install::ExtraTests>
Run extra tests

=head2 JSON

=for :list
= L<JSON|JSON>
Basic perl module to parse JSON
= L<JSON::Any|JSON::Any>
Auto use the best available JSON module
= L<JSON::XS|JSON::XS>
Fast C module to parse JSON

=head2 Math

=for :list
= L<Math::Big|Math::Big>
Easily compute math with big ints
= L<Math::Big::Factors|Math::Big::Factors>
Compute factors of a number

=head2 Moose

=for :list
= L<Getopt::Long::Descriptive|Getopt::Long::Descriptive>
Required for MooseX::App::Cmd
= L<Moose|Moose>
Base moose module
= L<MooseX::App::Cmd|MooseX::App::Cmd>
Extend your moose object as a script
= L<MooseX::Method::Signatures|MooseX::Method::Signatures>
Adds greate parameter varification to methods (with a performance price)
= L<MooseX::Types::Common|MooseX::Types::Common>
As it sounds, common types for Moose
= L<MooseX::Types::DateTimeX|MooseX::Types::DateTimeX>
Awesome DateTime parser
= L<MooseX::Types::Structured|MooseX::Types::Structured>
Lets you write enforce structured attributes better than base Moose

=head2 Networking

=for :list
= L<Net::CIDR::Lite|Net::CIDR::Lite>
Great CIDR calculation tool
= L<Net::DNS|Net::DNS>
Do some DNS lookups
= L<Net::IP|Net::IP>
Manip IP address
= L<Net::Netmask|Net::Netmask>
Yet another IP manip tool
= L<Net::Ping|Net::Ping>
Simple pinger

=head2 Testing

=for :list
= L<Perl::Critic|Perl::Critic>
Follow best practices
= L<Test::Most|Test::Most>
A whole bunch of tests modules
= L<Test::Perl::Critic|Test::Perl::Critic>
Follow best practices
= L<Test::Pod|Test::Pod>
Ensures your POD compiles ok
= L<Test::Pod::Coverage|Test::Pod::Coverage>
Make sure you document all of your functions

=head2 Utils

=for :list
= L<File::Slurp|File::Slurp>
Read in an entire file all at once
= L<List::MoreUtils|List::MoreUtils>
Provides some advanced-ish list utilities
= L<Readonly::XS|Readonly::XS>
Marks variables readonly... better than constant for some things
= L<Regexp::Common|Regexp::Common>
A ton of precompiled regular expressions
= L<namespace::autoclean|namespace::autoclean>
Cleans up the namespace of your modules

=head2 YAML

=for :list
= L<YAML|YAML>
Basic perl module to parse YAML
= L<YAML::Any|YAML::Any>
Auto use the best available YAML module
= L<YAML::Syck|YAML::Syck>
Another fast module to parse YAML
= L<YAML::XS|YAML::XS>
Fast C module to parse JSON

=cut
1;