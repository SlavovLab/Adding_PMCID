
open IN,  $ARGV[0];
open IN2,  $ARGV[1];
open OUT,  ">_$ARGV[1]";

$_ = <IN>;
while(<IN>){
 $_ =~ s/\"//g;
 @IDs = split /,/;
 if ( $IDs[1] =~ /PMC/ ){
    $HASH{  $IDs[2] } = @IDs[1];
 }
}


while(<IN2>){

  $line = $_;

  if ( $_ =~ /doi\{/ ){
    chomp;
    $line = $_;


    $_ =~ s/^(.+)\{//;
    $_ =~ s/\}(.+)//;
    $PMCID = $HASH{  $_ };
    if ($PMCID =~ /PMC/){
       print "$line PMCID: $PMCID\n";
       $line = "$line PMCID: $PMCID\n";
     }else{
       $line = "$line No PMCID avilable\n"
    }

  }
   print OUT $line;

}
