;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 2
Scriptname TIF__06007B2E Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_1
Function Fragment_1(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if akspeaker.IsInFaction(PlayerBedOwnership) == 1
akspeaker.AddToFaction(LMOS_ThisNPCWasInPlayerBedFaction)
endif
akspeaker.AddToFaction(PlayerBedOwnership)

HouseVisitAlias.ForceRefTo(akspeaker)
akspeaker.EvaluatePackage()
VisitorVariable.SetValue(1)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias property HouseVisitAlias  Auto
GlobalVariable Property VisitorVariable  Auto  
Faction Property PlayerBedOwnership  Auto  
Faction Property LMOS_ThisNPCWasInPlayerBedFaction  Auto  
