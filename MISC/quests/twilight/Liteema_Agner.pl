sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("looks up and smiles.  'Hiya. I just love fishing don't you?'");
}
if($text=~/What armor?/i){
quest::say("Oh! Tolli sent you over here didn't he. If you're a rogue and want some armor just let me know.");
}
if($text=~/I am a rogue/i){
quest::say("This stuff isn't free no sir! I have a mask. cloak. gauntlets. gorget. waistband. and a dirk.  Just ask and I'll tell ya what ya have to do to get it.");
}
if($text=~/What mask?/i){
quest::say("For the mask of concealment you're going to have to go get me an astral jewel. a mark of deceit. and an engraved fire opal statuette.");
}
if($text=~/What cloak?/i){
quest::say("For the cloak of concealment you're going to have to go get me a sun jewel. a mark of secrecy. an engraved ivory statuette. and a polished gemstone.");
}
if($text=~/What gauntlets?/i){
quest::say("For the gauntlets of concealment you're going to have to go get me a moon jewel. a mark of deception. and an engraved gold statuette.");
}
if($text=~/What gorget?/i){
quest::say("For the gorget of concealment you're going to have to go get me a star jewel. a mark of trickery. and an engraved wooden statuette.");
}
if($text=~/What waistband?/i){
quest::say("For the waistband of concealment you're going to have to go get me a cloud jewel. a mark of silence. an engraved platinum statuette. and a true silver needle.");
}
if($text=~/What dirk?/i){
quest::say("For the dirk of concealment you're going to have to go get me a sky jewel. a mark of greed. an engraved mithril statuette. and a dread hilt."); }
}
#END of FILE Zone:twilight  ID:170140 -- Liteema_Agner 

