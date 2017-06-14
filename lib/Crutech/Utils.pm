package Crutech::Utils;

sub ltsp_users {
  # This should be updated to rely on an LTSP users group in the future
  grep { $_ =~ m/\d+\w*$/ } split "\n", `ls /home`;
}

1;
