package Crutech::Utils;
use strict;
use warnings;

sub ltsp_users {
  # This should be updated to rely on an LTSP users group in the future
  grep { $_ =~ m/\d+\w*$/ } split "\n", `ls /home`;
}

sub slurp {
  my $file = shift(@_);
  local $/;
  open(my $fh, "<", $file) or die "Unable to open '$file': $!";
  return <$fh>;
}

sub has_content {
  my $string = shift;
  return 0 unless defined $string;
  return 0 unless length $string > 0;
  1
}

1;
