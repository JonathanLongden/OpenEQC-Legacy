sub EVENT_SAY { 
 if($text=~/Hail/i){
	quest::say("Welcome, $name.  The Cathedral of Underfoot welcomes all good persons.  May you find peace from the dangers of Butcherblock within these walls.  The paladins of this holy place are very much aware of the evils outside Kaladim.  The threat of goblins and [birdmen] has increased.");
 }
 if($text=~/what birdmen/i){
	quest::say("The birdmen I speak of are the aviak krags.  These vile creatures have desecrated our land.  They have dared to perch upon our great statue.  The king has instructed all noble paladins in this order to [destroy the krag chicks].");
 }
 if($text=~/i want to destroy the krag chicks/i || $text=~/I will destroy the krag chicks/i){
	quest::say("Yes.  You are known to have aided our cause.  You shall continue by returning any aviak chick talons to me.  I will reward you for the return of no fewer than four at a time.  Go, and serve the will of the king!");
 }
}

sub EVENT_ITEM {
 #do all other handins first, then let it do disciplines
 if($faction <= 2 && plugin::check_handin(\%itemcount, 12157 => 4)){ #faction is kindly or better
  	quest::say("Well done, $name! Thanks for the Aviak Chick Talons.");
 	quest::faction(44,20);
 	quest::faction(169,20);
 	quest::faction(219,20);
 	quest::summonitem(quest::ChooseRandom(2116,2118,2120,2123,2124));
 	quest::exp(5000);
	quest::ding();
 	quest::say("You have proven yourself worthy, $name. Now, the real threat from the birdmen are the more fully-grown aviaks. Return no less than four talons from these creatures and I shall reward you!");
 } elsif(plugin::check_handin(\%itemcount, 12157 => 4)){
   	quest::say("Well done, $name! Thanks for the Aviak Chick Talons.");
  	quest::faction(44,20);
  	quest::faction(169,20);
  	quest::faction(219,20);
  	quest::summonitem(quest::ChooseRandom(2116,2118,2120,2123,2124));
  	quest::exp(5000);
	quest::ding();
 } elsif($faction <= 2 && plugin::check_handin(\%itemcount, 12158 => 4)){
	quest::say("Ahh! you are truly brave, $name!");
	quest::faction(44,40);
	quest::faction(169,40);
	quest::faction(219,40);
	quest::givecash(0,4,5,2);
	quest::exp(80000);
	quest::ding();
 } else {
	if($class ne 'Paladin') {
		quest::say("You are not a member of my guild. I will not train you!");
		quest::summonitem($item1) if($item1);
		quest::summonitem($item2) if($item2);
		quest::summonitem($item3) if($item3);
		quest::summonitem($item4) if($item4);
		return;
	}
	#assume it is a discipline tome...
	quest::traindisc($item1) if(quest::isdisctome($item1));
	quest::traindisc($item2) if(quest::isdisctome($item2));
	quest::traindisc($item3) if(quest::isdisctome($item3));
	quest::traindisc($item4) if(quest::isdisctome($item4));
 }
}
#END of FILE Zone:kaladimb  ID:67026 -- Bumle_Reminjar
