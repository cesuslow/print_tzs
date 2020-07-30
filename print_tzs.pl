#! /usr/bin/perl

use POSIX qw(tzset);

my @tzs = qw(
	US/Eastern 
	Pacific/Honolulu 
	Pacific/Tongatapu 
	Pacific/Fiji 
	Pacific/Auckland 
	Pacific/Guam 
	Australia/Brisbane
	);

foreach(@tzs){
	$ENV{TZ} = $_;
	my $cur_time = localtime;
	printf("%-20s = %30s \n", $ENV{TZ}, $cur_time);
}

