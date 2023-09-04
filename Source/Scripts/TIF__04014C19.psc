;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__04014C19 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.disablePlayerControls()

Game.FadeOutGame(false, true, 2.0, 1.0)
Utility.Wait(1)
Debug.notification("You spent some time with your partner.")
float currenthour = GameHour.GetValue()
float newtime = currenthour + 2
GameHour.SetValue(newtime)
Utility.Wait(1)

akspeaker.AddToFaction(LMOS_RelationshipFaction)
if akspeaker.GetFactionRank(LMOS_RelationshipFaction) < 10
int currentrank = akspeaker.GetFactionRank(LMOS_RelationshipFaction)
int newrank = currentrank + 1
akspeaker.SetFactionRank(LMOS_RelationshipFaction, newrank)
endif

Game.EnablePlayerControls()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property GameHour  auto
actor property playerref auto
Faction Property LMOS_RelationshipFaction  Auto  
