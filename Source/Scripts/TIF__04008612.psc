;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__04008612 Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
if akspeaker.IsInFaction(LMOS_ThisNPCWasInPlayerBedFaction) == 0
akspeaker.RemoveFromFaction(PlayerBedOwnership)
endif
akspeaker.RemoveFromFaction(LMOS_ThisNPCWasInPlayerBedFaction)

HouseVisitAlias.Clear()
akspeaker.EvaluatePackage()
VisitorVariable.SetValue(0)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias property HouseVisitAlias  Auto
GlobalVariable Property VisitorVariable  Auto  
Faction Property PlayerBedOwnership  Auto  
Faction Property LMOS_ThisNPCWasInPlayerBedFaction  Auto  
