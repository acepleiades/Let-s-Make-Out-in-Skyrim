;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__01000D72 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
game.disablePlayerControls()

Int aiButton = LMOS_CompanyMESG.Show()
If aiButton == 0
	Debug.Notification("You had a chat with your lover.")
ElseIf aiButton == 1
	Debug.Notification("Your lover was fascinated by your words.")
ElseIf aiButton == 2
	Debug.Notification("You exchanged flirty remarks with your lover.")
ElseIf aiButton == 3
	Debug.Notification("You left a good impression with your lover.")
EndIf

Game.FadeOutGame(false, true, 2.0, 1.0)
Utility.Wait(1)

float currenthour = GameHour.GetValue()
float newtime = currenthour + 2
GameHour.SetValue(newtime)
Utility.Wait(1)

Debug.Notification("Spending time with your lover was enjoyable.")

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
Message Property LMOS_CompanyMESG  Auto  
