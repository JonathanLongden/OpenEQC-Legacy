sub EVENT_SAY { 
if ($text=~/Hail/i){quest::say("Ah.. Welcome friend. I am master Seta, of the Silent Fist Clan. We know that true strength lies inside your soul. Once you have found and mastered it, your fists will be deadlier than any blade.  I am also currently in charge of training our new recruits. If you are new monk of the Silent Fist I  have some [tests] for you to complete.");
}
if ($text=~/tests/i){quest::say("I pride myself on passing some of the finest monks in all of the lands through my testing halls. I mainly attribute this fact to my training program that all young monks must undergo. When you are [ready to begin the tests] I will present you with your Silent Fist Assembly Kit and explain to you how the tests work.");
}
if ($text=~/ready to begin the tests/i){quest::say("Be mindful of your surroundings Gardin, it is here in Qeynos and in the adventuring areas surround it that you will find all the necessary items for creating Armor of the Silent Fist. You will place a number of items in this kit to created infused armor materials. These magical armor materials can then be combined in a loom with a magical pattern to create different Armor of the Silent Fist pieces. When you are ready to collect the items for a specific armor pieces please tell me what armor piece you [want] to craft. I can present you with the patterns for Silent Fist [Caps], [Bracers], [Sleeves], [Sandals], [Trousers], [Gloves] and [Robes].");
quest::summonitem("17270");
}
if ($text=~/caps/i){quest::say("To create your cap material you will need to combine 2 Woven Spider Silks, 1 Skeleton Tibia, 1 Field Rat Skull and a Cloth Cap in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Cap of the Silent Fist.");
quest::summonitem("22583");
}
if ($text=~/Bracers/i){quest::say("To create your bracer material you will need to combine 1 Woven Spider Silk, 2 Rat Whiskers, 1 Gnoll Jawbone and a Cloth Wristband in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Bracer of the Silent Fist.");
quest::summonitem("22584");
}
if ($text=~/sleeves/i){quest::say("To create your sleeves material you will need to combine 2 Woven Spider Silks, 2 Rabid Wolf Hides, and Cloth Sleeves in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Sleeves of the Silent Fist.");
quest::summonitem("22586");
}
if ($text=~/sandals/i){quest::say("To create your boot material you will need to combine 3 Woven Spider Silks, 1 Severed Gnoll Foot, 1 Gnoll Backbone, 1 Bone Chip and Cloth Sandals in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Sandals of the Silent Fist.");
quest::summonitem("22585");
}
if ($text=~/Trousers/i){quest::say("To create your trouser material you will need to combine 4 Woven Spider Silks, 1 Bandit Sash, 1 Matted Lion Pelt and 1 Giant Spider Egg Sack in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Trousers of the Silent Fist.");
quest::summonitem("22587");
}
if ($text=~/Gloves/i){quest::say("To create your glove material you will need to combine 3 Woven Spider Silks, 1 Giant Fire Beetle Eye, 1 Chunk of Meat, 1 Ale and 1 Young Puma Skin in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Gloves of the Silent Fist.");
quest::summonitem("22588");
}
if ($text=~/Robe/i){quest::say("To create your robe material you will need to combine 5 Woven Spider Silks, 1 High Quality Cat Pelt, 1 Shadow Wolf Paw, 1 Severed Gnoll Foot, 1 Matted Lion Pelt and 1 Cloth Shirt in your assembly kit. Once you have created the proper material take it to a loom along with this pattern to fashion your very own Robe of the Silent Fist. Please come see me after you have completed your robe. I need to see you for some help with a [problem] our clan has been having.");
quest::summonitem("22589");
}
if ($text=~/problem/i){quest::say("There have been numerous muggings lately in Qeynos by corrupt guards. These guards are sworn to protect, server and uphold law in the city but all the do is break the law ten fold themselves. These corrupt individuals must be stopped. I have a [Silent Fist clan member] that I feel may be in trouble.");
}
if ($text=~/silent fist clan member/i){quest::say("Konem Matse is my friend and mentor, he resides in Qeynos Hills providing security for the Sayers there. Lately though I have heard reports of guards demanding he pay them tax or else. This tax they speak of does not exist. I need you to go to the hills and help Konem. Rid the lands of these corrupt guards and bring me their heads as proof. I will also need 1 High Quality Gnoll Fur for a tailoring project I have been working on. Return to me with these items and you will be rewarded for your troubles.");
}
if ($text=~/Tomer Instogle/i){quest::say("Oh, Tomer? We haven't heard from him in days, I'm really starting to worry. . . We need to have someone go [find him].");
}
if ($text=~/find him/i){quest::say("One of our clan brothers has not reported back in over three days. He was sent to help defend the Qeynos Gates, and we haven't heard from him since. We need you to find him, if he is still alive. Tell him that Seta has sent you to find him, and escort him back to our guild. Good luck.");
}
if (($text=~/I have rescued Tomer Instgle/i) or ($text=~/I found Tomer/i)){
	quest::flagcheck(30,1);
	if($returnflag == 1){
	quest::say("Great work $name, we thought that was the last we'd seen of young Tomer.");
	quest::flagnpc(30,2);
	quest::flagcheck(30,1); }
	}
}

sub EVENT_ITEM { 
 if ($itemcount{27426} == 1 && $itemcount{27426} == 1 && $itemcount{27427} == 1 ){
	quest::summonitem("27494");
	quest::faction("2082","1");
	quest::faction("2084","1");
	quest::faction("2030","1");
	quest::exp("300");
 } else {
	if($class ne 'Monk') {
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
#END of FILE Zone:qeynos2  ID:2078 -- Seta_Bakindo 

