use warnings;
use strict;
use utf8;

package Task::BeLike::LESPEA;

# ABSTRACT: Modules that LESPEA uses on a daily basis

=encoding utf8

=head2 Data Parsing

=for :list
= L<Excel::Writer::XLSX|Excel::Writer::XLSX>
Modern XLSX writer
= L<Spreadsheet::ParseExcel|Spreadsheet::ParseExcel>
Read Microsoft xls files
= L<Spreadsheet::Read|Spreadsheet::Read>
Write a wide variety of 'spreadsheets'
= L<Spreadsheet::WriteExcel|Spreadsheet::WriteExcel>
Write Microsoft xls files
= L<Spreadsheet::XLSX|Spreadsheet::XLSX>
Legacy XLSX writer
= L<Text::CSV_XS|Text::CSV_XS>
Parse CSV files, no matter how borked up they are

=head2 Database

=for :list
= L<DBD::CSV|DBD::CSV>
Treat a CSV like a database
= L<DBI|DBI>
Base database handler

=head2 Dates

=for :list
= L<Date::Calc|Date::Calc>
Perform date calculations
= L<Date::Manip|Date::Manip>
Work with dates
= L<DateTime|DateTime>
Base date object
= L<DateTime::Format::DB2|DateTime::Format::DB2>
Convert various strings to datetime objects
= L<DateTime::Format::DBI|DateTime::Format::DBI>
Convert various strings to datetime objects
= L<DateTime::Format::DateManip|DateTime::Format::DateManip>
Convert various strings to datetime objects
= L<DateTime::Format::DateParse|DateTime::Format::DateParse>
Convert various strings to datetime objects
= L<DateTime::Format::Duration|DateTime::Format::Duration>
Convert various strings to datetime objects
= L<DateTime::Format::Duration::DurationString|DateTime::Format::Duration::DurationString>
Convert various strings to datetime objects
= L<DateTime::Format::Duration::XSD|DateTime::Format::Duration::XSD>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch|DateTime::Format::Epoch>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::ActiveDirectory|DateTime::Format::Epoch::ActiveDirectory>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::DotNet|DateTime::Format::Epoch::DotNet>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::JD|DateTime::Format::Epoch::JD>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::Lilian|DateTime::Format::Epoch::Lilian>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::MJD|DateTime::Format::Epoch::MJD>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::MacOS|DateTime::Format::Epoch::MacOS>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::RJD|DateTime::Format::Epoch::RJD>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::RataDie|DateTime::Format::Epoch::RataDie>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::TAI64|DateTime::Format::Epoch::TAI64>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::TJD|DateTime::Format::Epoch::TJD>
Convert various strings to datetime objects
= L<DateTime::Format::Epoch::Unix|DateTime::Format::Epoch::Unix>
Convert various strings to datetime objects
= L<DateTime::Format::Excel|DateTime::Format::Excel>
Convert various strings to datetime objects
= L<DateTime::Format::Flexible|DateTime::Format::Flexible>
Convert various strings to datetime objects
= L<DateTime::Format::Flexible::lang::en|DateTime::Format::Flexible::lang::en>
Convert various strings to datetime objects
= L<DateTime::Format::HTTP|DateTime::Format::HTTP>
Convert various strings to datetime objects
= L<DateTime::Format::Human|DateTime::Format::Human>
Convert various strings to datetime objects
= L<DateTime::Format::Human::Duration|DateTime::Format::Human::Duration>
Convert various strings to datetime objects
= L<DateTime::Format::Human::Duration::Locale|DateTime::Format::Human::Duration::Locale>
Convert various strings to datetime objects
= L<DateTime::Format::ICal|DateTime::Format::ICal>
Convert various strings to datetime objects
= L<DateTime::Format::ISO8601|DateTime::Format::ISO8601>
Convert various strings to datetime objects
= L<DateTime::Format::MSSQL|DateTime::Format::MSSQL>
Convert various strings to datetime objects
= L<DateTime::Format::MySQL|DateTime::Format::MySQL>
Convert various strings to datetime objects
= L<DateTime::Format::Natural|DateTime::Format::Natural>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Aliases|DateTime::Format::Natural::Aliases>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Calc|DateTime::Format::Natural::Calc>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Compat|DateTime::Format::Natural::Compat>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Duration|DateTime::Format::Natural::Duration>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Duration::Checks|DateTime::Format::Natural::Duration::Checks>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Expand|DateTime::Format::Natural::Expand>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Extract|DateTime::Format::Natural::Extract>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Formatted|DateTime::Format::Natural::Formatted>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Helpers|DateTime::Format::Natural::Helpers>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Lang::Base|DateTime::Format::Natural::Lang::Base>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Lang::EN|DateTime::Format::Natural::Lang::EN>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Rewrite|DateTime::Format::Natural::Rewrite>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Test|DateTime::Format::Natural::Test>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Utils|DateTime::Format::Natural::Utils>
Convert various strings to datetime objects
= L<DateTime::Format::Natural::Wrappers|DateTime::Format::Natural::Wrappers>
Convert various strings to datetime objects
= L<DateTime::Format::Oracle|DateTime::Format::Oracle>
Convert various strings to datetime objects
= L<DateTime::Format::Pg|DateTime::Format::Pg>
Convert various strings to datetime objects
= L<DateTime::Format::RFC3339|DateTime::Format::RFC3339>
Convert various strings to datetime objects
= L<DateTime::Format::RFC3501|DateTime::Format::RFC3501>
Convert various strings to datetime objects
= L<DateTime::Format::RSS|DateTime::Format::RSS>
Convert various strings to datetime objects
= L<DateTime::Format::Roman|DateTime::Format::Roman>
Convert various strings to datetime objects
= L<DateTime::Format::SQLite|DateTime::Format::SQLite>
Convert various strings to datetime objects
= L<DateTime::Format::Strptime|DateTime::Format::Strptime>
Convert various strings to datetime objects
= L<DateTime::Format::Sybase|DateTime::Format::Sybase>
Convert various strings to datetime objects
= L<DateTime::Format::Variant|DateTime::Format::Variant>
Convert various strings to datetime objects
= L<DateTime::Format::W3CDTF|DateTime::Format::W3CDTF>
Convert various strings to datetime objects
= L<DateTime::Format::WindowsFileTime|DateTime::Format::WindowsFileTime>
Convert various strings to datetime objects
= L<DateTime::Format::XMLTV|DateTime::Format::XMLTV>
Convert various strings to datetime objects
= L<DateTime::Format::XSD|DateTime::Format::XSD>
Convert various strings to datetime objects
= L<DateTime::Format::x509|DateTime::Format::x509>
Convert various strings to datetime objects

=head2 Development

=for :list
= L<Data::Printer|Data::Printer>
Very nice object printer
= L<Devel::Cover|Devel::Cover>
Make sure we test all our functions
= L<Devel::NYTProf|Devel::NYTProf>
Best profiler available! (by far)
= L<Devel::REPL|Devel::REPL>
Nicely interact with perl
= L<Devel::REPL::Plugin::DataPrinter|Devel::REPL::Plugin::DataPrinter>
Let us use a nice object printer
= L<Module::Refresh|Module::Refresh>
Reload a module from disk
= L<Module::Reload|Module::Reload>
Reload a module from disk
= L<Perl::Critic|Perl::Critic>
Check our files for best practices
= L<Perl::Tidy|Perl::Tidy>
Generate nice looking perl

=head2 Dist::Zilla

=for :list
= L<Dist::Zilla|Dist::Zilla>
Base dist module
= L<Dist::Zilla::PluginBundle::Author::LESPEA|Dist::Zilla::PluginBundle::Author::LESPEA>
My dzil config

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
= L<File::Next|File::Next>
Iterate over files
= L<File::ShareDir|File::ShareDir>
Auto store/fetch files in the current modules' "private" folder structure once it's installed

=head2 HTML stuff

=for :list
= L<Encode|Encode>
Encoding helper
= L<HTML::Entities|HTML::Entities>
Help us with html entities
= L<HTML::Tree|HTML::Tree>
Build a huge tree out of the HTML Dom
= L<HTML::TreeBuilder::XPath|HTML::TreeBuilder::XPath>
Do some xpath lookups for an HTML tree
= L<LWP|LWP>
Get stuff from the internet
= L<PPI::HTML|PPI::HTML>
Turn perl into a nice html page
= L<Template|Template>
Template module for generating files safely
= L<WWW::Mechanize|WWW::Mechanize>
Automate website crawling

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
= L<Any::Moose|Any::Moose>
Use either moose or mouse
= L<Getopt::Long::Descriptive|Getopt::Long::Descriptive>
Required for MooseX::App::Cmd
= L<Moose|Moose>
Base moose module
= L<Moose::Meta::Attribute::Native|Moose::Meta::Attribute::Native>
Treat attributes like they were native objects
= L<MooseX::Aliases|MooseX::Aliases>
Make it easier to create objects
= L<MooseX::App|MooseX::App>
Turn your object(s) into an app
= L<MooseX::App::Cmd|MooseX::App::Cmd>
Extend your moose object as a script
= L<MooseX::Log:::Log4perl|MooseX::Log:::Log4perl>
Easy logging injector
= L<MooseX::Method::Signatures|MooseX::Method::Signatures>
Adds greate parameter varification to methods (with a performance price)
= L<MooseX::Singleton|MooseX::Singleton>
Easily create a singleton object (good for caches)
= L<MooseX::StrictConstructor|MooseX::StrictConstructor>
Ensure passed hash items are valid attributes
= L<MooseX::Types|MooseX::Types>
Basic moose types
= L<MooseX::Types::Common|MooseX::Types::Common>
As it sounds, common types for Moose
= L<MooseX::Types::Common::Numeric|MooseX::Types::Common::Numeric>
As it sounds, common numeric types for Moose
= L<MooseX::Types::Common::String|MooseX::Types::Common::String>
As it sounds, common string types for Moose
= L<MooseX::Types::DateTime::ButMaintained|MooseX::Types::DateTime::ButMaintained>
Datetime type
= L<MooseX::Types::Email|MooseX::Types::Email>
Contains an email address
= L<MooseX::Types::IPv4|MooseX::Types::IPv4>
IP Address
= L<MooseX::Types::JSON|MooseX::Types::JSON>
A JSON string
= L<MooseX::Types::NetAddr::IP|MooseX::Types::NetAddr::IP>
Alternative to IPv4
= L<MooseX::Types::PortNumber|MooseX::Types::PortNumber>
A valid port number
= L<MooseX::Types::Structured|MooseX::Types::Structured>
Lets you write enforce structured attributes better than base Moose
= L<MooseX::Types::URI|MooseX::Types::URI>
A valid URI address string
= L<MooseX::Types::UUID|MooseX::Types::UUID>
A valid UUID string
= L<MouseX::Types|MouseX::Types>
Basic mouse types

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
= L<Test::Fatal|Test::Fatal>
Make sure something dies okay
= L<Test::File|Test::File>
Test a file for wanted attributes
= L<Test::LeakTrace|Test::LeakTrace>
Don't leak memory
= L<Test::Memory::Cycle|Test::Memory::Cycle>
Make sure you don't have any cyclical data structures
= L<Test::Most|Test::Most>
A whole bunch of tests modules
= L<Test::Output|Test::Output>
Make sure a script outputs the correct values
= L<Test::Perl::Critic|Test::Perl::Critic>
Follow best practices
= L<Test::Pod|Test::Pod>
Ensures your POD compiles ok
= L<Test::Pod::Coverage|Test::Pod::Coverage>
Make sure you document all of your functions
= L<Test::Taint|Test::Taint>
Ensure taint handling is done correctly

=head2 Threading

=for :list
= L<AnyEvent|AnyEvent>
Use whatever event module is best
= L<Async::Interrupt|Async::Interrupt>
Thread helper
= L<Coro|Coro>
The best threading module out there
= L<EV|EV>
Enhanced event handling module
= L<Event|Event>
Basic event handling module
= L<Guard|Guard>
Thread helper

=head2 Utils

=for :list
= L<File::Slurp|File::Slurp>
Read in an entire file all at once
= L<IO::Scalar|IO::Scalar>
Turn scalars into io objects
= L<List::AllUtils|List::AllUtils>
For those of us that can't remember which one to use
= L<List::Gen|List::Gen>
Very good list processing helper
= L<List::MoreUtils|List::MoreUtils>
Provides some advanced-ish list utilities
= L<Modern::Perl|Modern::Perl>
Turn on new features
= L<Readonly::XS|Readonly::XS>
Marks variables readonly... better than constant for some things
= L<Regexp::Common|Regexp::Common>
A ton of precompiled regular expressions
= L<Scalar::Util|Scalar::Util>
Additional scalar helpers
= L<Task::Weaken|Task::Weaken>
Let us create weak objects
= L<autovivification|autovivification>
Makes working with hashes easier
= L<namespace::autoclean|namespace::autoclean>
Cleans up the namespace of your modules

=head2 XML

=for :list
= L<XML::LibXML|XML::LibXML>
Base XML module
= L<XML::SAX|XML::SAX>
Stream handling
= L<XML::Simple|XML::Simple>
Even more simple than twig
= L<XML::Twig|XML::Twig>
Make XML easy

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