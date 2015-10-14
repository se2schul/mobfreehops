#!/usr/bin/perl
#

use strict;
use warnings;
use Data::Dumper;


my %centennialHash;
my %polarisHash;
my %palisadeHash;
my %nuggetHash;

my %preventDuplicateHash;
my %allParticipants;


sub main;
sub populateParticipants;
sub printParicipants;
sub generateWinners;
sub genWinArray($$$);



sub populateParticipants() {
  %centennialHash = (
        'Steve Schultz','1',
        'Shawn Devlin','1',
        'Jason Pugh','1',
        'Pete Hickey','1',
        'Nathan Shirey','1',
        'Philippe Béchamp','1',
        'Eric Ducasse','1',
        'Patrick Boisvenue','1',
        'Kevin Tracy','1',
        'Sean McVeigh','1',
        'Max Lessard','1',
        'MIchael MacIntyre','1',
        'Charles Starling','1',
        'Miasha Sokolov','1',
        'Greg Terry','1',
        'Chris Beggs ','1',
        'Marc Lapierre','1',
        'Austin Chamney','1',
        'Geoff campbell','1',
        'Tom Hastie','1',
        'Ian MacLeod','1',
        'Ryan Jaecques','1',
        'Chris Marshall','1',
        'Mike McKenna','1',
        'Mike Downs','1',
        'christian baillargeon','1',
        'Ciaran Ryan ','1',
        'dennis baril ','1',
        'Nickolas Boucher ','1',
        'Todd Keesey ','1',
        'Barry Beadman','1',
        'Dave Gilmour','1',
        'Neil Forman','1',
        'Greg Wellon','1',
        'Yves Poirier','1',
        'Mike Henry','1',
        'Adam Cockburn','1',
        'Paul Keating','1',
        'Alex Sheftel','1',
        'Jason Godby','1',
        'James McKenna','1',
        'Gord McGregor','1',
        'David Bard','1',
        'John Mehan','1',
        'Jason Tanner','1',
        'Nicholas OHara','1',
        'Matt O\'Hara','1',
        'Keith Buchanan','1',
        'Matthew Ellis','1',
        'Craig Williams','1',
        'Dominic Guiver','1',
        'Jamie Villeneuve','1',
        'Mathieu gervais','1',
        'Chris Lambert','1',
        'Brian Nadon ','1',
        'Aaron Learmonth','1',
        'Ryan Anderson','1',
        'Kevin Miller','1',
        'Fabien Dupont-Mattar','1',
        'Frazer Berry','1',
        'Dave Wilenius','1',
  );

  %polarisHash = (
        'Richard McAteer','1',
        'Bart Bristow','1',
        'Daniel Wirz','1',
        'Mark Atos','1',
        'Marc Lapierre','1',
        'Patrick Boisvenue','1',
        'MIchael MacIntyre','1',
        'Austin Chamney','1',
        'Kevin Tracy','1',
        'Max Lessard','1',
        'Jamil Assaad','1',
        'Geoff Campbell','1',
        'Tom Hastie','1',
        'Ian macleod','1',
        'Chris Marshall','1',
        'Mike McKenna','1',
        'Mike Downs','1',
        'Misha Sokolov','1',
        'Ciaran Ryan ','1',
        'Jonathan Holmes','1',
        'dennis baril','1',
        'Ross Whitehead','1',
        'Todd Keesey ','1',
        'bryker','1',
        'Dave Gilmour','1',
        'Neil Forman','1',
        'Dave Hopkins','1',
        'christian baillargeon','1',
        'Nathan Shirey','1',
        'David Horan','1',
        'Adam Cockburn','1',
        'Barry Beadman','1',
        'Kevin O\'Reilly','1',
        'Alex Pilon','1',
        'Jason Godby','1',
        'Siarhei Shlyk','1',
        'James McKenna','1',
        'Pete Hickey','1',
        'Gord McGregor','1',
        'David Bard','1',
        'John Mehan','1',
        'Craig Williams','1',
        'Matt Gauthier','1',
        'mathieu gervais','1',
        'Justin Murray','1',
        'Chris Lambert','1',
        'Marc Verville','1',
        'Frazer Berry','1',
        'Aaron Learmonth','1',
        'Mike McKenna','1',
        'Fabien Dupont-Mattar','1',
        'sean mcveigh','1',
        'Andrew LaCroix','1',
        'Sue Varve','1',
  );

  %palisadeHash = (
        'Steve Schultz','1',
        'Mark Atos','1',
        'Daniel Careau','1',
        'MIchael MacIntyre','1',
        'Misha Sokolov','1',
        'Marc Lapierre','1',
        'Jamil Assaad','1',
        'Ian MacLeod','1',
        'Kevin Tracy','1',
        'Geoff campbell','1',
        'Tom Hastie','1',
        'Mike McKenna','1',
        'Mike Downs','1',
        'christian baillargeon','1',
        'Ciaran Ryan ','1',
        'dennis baril','1',
        'Todd Keesey ','1',
        'Don Shesnicky','1',
        'Jason Pugh','1',
        'Dave Gilmour','1',
        'Greg Wellon','1',
        'Dave Hopkins','1',
        'David Horan','1',
        'Eric Ducasse','1',
        'James McKenna','1',
        'Gord McGregor','1',
        'David Bard','1',
        'Matt O\'Hara','1',
        'Craig Williams','1',
        'Matthew Ellis','1',
        'Dominic Guiver','1',
        'Justin Murray','1',
        'Aaron Learmonth','1',
        'Ryan Anderson','1',
        'Fabien Dupont-Mattar','1',
        'Frazer Berry','1',
        'Craig Lyons','1',
        'Sue Varve','1',
  );

  %nuggetHash = (
        'Richard McAteer','1',
        'Shawn Devlin','1',
        'Jason Pugh','1',
        'Bart Bristow','1',
        'Nathan Shirey','1',
        'Daniel Careau','1',
        'Max Lessard','1',
        'MIchael MacIntyre','1',
        'Kevin Tracy','1',
        'Greg Terry','1',
        'Austin Chamney','1',
        'Geoff campbell','1',
        'Tom Hastie','1',
        'Ryan Jaecques','1',
        'Ian MacLeod','1',
        'Mike Downs','1',
        'Ciaran Ryan','1',
        'Jonathan Holmes','1',
        'Eric Ducasse','1',
        'dennis baril','1',
        'Nickolas Boucher ','1',
        'Todd Keesey ','1',
        'Yves Poirier','1',
        'Alex Pilon','1',
        'James McKenna','1',
        'David Bard','1',
        'John Mehan','1',
        'Martin Hicks','1',
        'Craig Williams','1',
        'Matthew Ellis','1',
        'Mathieu Gervais ','1',
        'Justin Murray','1',
        'Nugget','1',
        'Brian Nadon ','1',
        'Aaron Learmonth','1',
        'Fabien Dupont-Mattar','1',
        'Frazer Berry','1',
  );

  foreach my $key ( keys %centennialHash )
  {
    $allParticipants{$key} = '1';
  }
  foreach my $key ( keys %polarisHash )
  {
    $allParticipants{$key} = '1';
  }
  foreach my $key ( keys %palisadeHash )
  {
    $allParticipants{$key} = '1';
  }
  foreach my $key ( keys %nuggetHash )
  {
    $allParticipants{$key} = '1';
  }
}


sub printParicipants() {
  print Dumper(\%centennialHash);
  print Dumper(\%polarisHash);
  print Dumper(\%palisadeHash);
  print Dumper(\%nuggetHash);
}

sub genWinArray($$$) {
  
  my $max=shift;
  my $hopsHashRef = shift;
  my $hopsWinnerRef = shift;

  #my %hopsHash = %$hopsHashRef;
  #my %hopsWinnerHash = %$hopsWinnerRef;

  print "genWinArray: max=$max\n";

  my $numWinners = 0;
  do {
    print "ses:1\n";
    my @keys = keys(%$hopsHashRef);
    my $randKey = $keys[rand(@keys)] ;
    # ensure unique winners
    if (!(exists $preventDuplicateHash{$randKey})) {
      $$hopsWinnerRef{$randKey} = '1';
      $preventDuplicateHash{$randKey} = '1';
    }
    $numWinners = scalar keys %$hopsWinnerRef;
  } until ($numWinners >= $max);
}


sub generateWinners() {
  my $maxCentennial = 10;
  my $maxPolaris    = 10;
  my $maxPalisade   = 10;
  my $maxNugget     = 10;

  my %winCentennial;
  my %winPolaris;
  my %winPalisade;
  my %winNugget;


  genWinArray($maxCentennial, \%centennialHash, \%winCentennial);
  genWinArray($maxPolaris, \%polarisHash, \%winPolaris);
  genWinArray($maxPalisade, \%palisadeHash, \%winPalisade);
  genWinArray($maxNugget, \%nuggetHash, \%winNugget);

  print "===========================================\n";
  print "Centennial\n";
  print "===========================================\n";
  print Dumper(\%winCentennial);
  print "===========================================\n";
  print "Palisade\n";
  print "===========================================\n";
  print Dumper(\%winPalisade);
  print "===========================================\n";
  print "Polaris\n";
  print "===========================================\n";
  print Dumper(\%winPolaris);
  print "===========================================\n";
  print "Nugget\n";
  print "===========================================\n";
  print Dumper(\%winNugget);
}


sub main() {

  print "Hops split\n";
  populateParticipants;
  
  printParicipants;

  generateWinners;
}

#==========================================
main();
exit 0;
