;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__06007B2F Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
float currentday = GameDaysPassed.GetValue()
float visitEnd = currentday + 0.25
LMOS_TimeToEndVisit.SetValue(visitEnd)
HouseVisitAlias.ForceRefTo(akspeaker)
akspeaker.EvaluatePackage()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property GameDaysPassed  Auto  
GlobalVariable Property LMOS_TimeToEndVisit  Auto  
ReferenceAlias property HouseVisitAlias  Auto
