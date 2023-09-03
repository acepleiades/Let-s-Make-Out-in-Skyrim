;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 1
Scriptname TIF__06000D6D Extends TopicInfo Hidden

;BEGIN FRAGMENT Fragment_0
Function Fragment_0(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
float currentday = GameDaysPassed.GetValue()
float visitEnd = LMOS_TimeToEndVisit.GetValue()

if visitEnd > currentday
HouseVisitAlias0.Clear()
HouseVisitAlias1.Clear()
HouseVisitAlias2.Clear()
HouseVisitAlias3.Clear()
HouseVisitAlias4.Clear()
HouseVisitAlias5.Clear()
HouseVisitAlias6.Clear()
HouseVisitAlias7.Clear()
endif
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

GlobalVariable Property GameDaysPassed  Auto  
GlobalVariable Property LMOS_TimeToEndVisit  Auto  
ReferenceAlias property HouseVisitAlias0  Auto
ReferenceAlias property HouseVisitAlias1  Auto
ReferenceAlias property HouseVisitAlias2  Auto
ReferenceAlias property HouseVisitAlias3  Auto
ReferenceAlias property HouseVisitAlias4  Auto
ReferenceAlias property HouseVisitAlias5  Auto
ReferenceAlias property HouseVisitAlias6  Auto
ReferenceAlias property HouseVisitAlias7  Auto