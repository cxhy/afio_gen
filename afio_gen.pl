#! /usr/bin/perl

use File::Copy;
use IO::Scalar;
use Spreadsheet::Read;
use Spreadsheet::ReadSXC;
use Spreadsheet::ParseXLSX;
use Switch;
use Getopt::Long;





use vars qw($opt_h $opt_v );
GetOptions(
  'help|h'       => \$opt_h,
  'version|v'    => \$opt_v
) or die $!;

if($opt_h){
  &print_usage();
  exit(1);
}

if($opt_v){
  print "0.1\n";
}

#if(@ARGV == 0){
#  print "Error : No Input file specified!\n";
#  &print_usage();
#  exit(1);
#}

my $g_srcfile_name = "./afio.xlsx";




my $book = Spreadsheet::Read->new ($g_srcfile_name);
my $sheet = $book->sheet (1);
my $cell  = $sheet->cell ("C5");
my $cell2  = $sheet->cell ("C6");
my $cell3  = $sheet->cell ("D5");
my $cell4  = $sheet->cell ("E5");
#my $cell = $sheet->("C5");
#my $col_id = $book->col2label(1);

print "$cell\n";
print "$cell2\n";
print "$cell3\n";
print "$cell4\n";

if($cell2 eq ""){print "xx\n"}
my $cell0 = $sheet->cell("A1");
print "$cell0\n";
if($cell0 eq ""){print "xx\n"}


sub usage(){
  print "not ready\n";
}

