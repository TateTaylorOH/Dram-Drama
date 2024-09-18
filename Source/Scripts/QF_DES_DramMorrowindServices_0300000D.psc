;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 9
Scriptname QF_DES_DramMorrowindServices_0300000D Extends Quest Hidden

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Galos
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Galos Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveDisplayed(10)
Alias_Player.AddInventoryEventFilter(DES_Dram)
(DES_DramMorrowindServicesQuest as DES_ExchangeDramsFunctions).HasVended = 1
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_0
Function Fragment_0()
;BEGIN CODE
SetObjectiveDisplayed(0)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(10)
Alias_Player.RemoveAllInventoryEventFilters()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
Alias_Player.RemoveAllInventoryEventFilters()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
SetObjectiveCompleted(0)
(DES_DramMorrowindServicesQuest as DES_ExchangeDramsFunctions).Intro = 1
Alias_Galos.trytoEvaluatePackage()
Ledger.Disable()
Ledger.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveDisplayed(0,abDisplayed = false)
(DES_DramMorrowindServicesQuest as DES_ExchangeDramsFunctions).Intro = 1
Alias_Galos.trytoEvaluatePackage()
Ledger.Disable()
Ledger.Delete()
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property DES_DramMorrowindServicesQuest  Auto  

ObjectReference Property Ledger  Auto  

MiscObject Property DES_Dram  Auto  
