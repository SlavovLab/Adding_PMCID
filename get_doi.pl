
open IN,  $ARGV[0];
open OUT,  ">DOIs_$ARGV[0]";


while(<IN>){

  if ( $_ =~ /doi/ ){

    $_ =~ s/^(.+)\{//;
    $_ =~ s/\}(.+)//, $_;
    print OUT  "$_";
    print  "$_";
  }


}
