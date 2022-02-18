# QuickStartGuide_foc_evspin32g4

Dieser Quick Start Guide soll den Workflow von der Erstellung des lokalen Git Repository bis hin 
zum Start der feldorientierten Regelung auf dem Evaluationboard evspin32g4 von ST aufzeigen.

Folgende Hardware Komponenten sind zur Inbetriebnahme der feldorientierten Regelung notwendig:
 - Evalutationboard evspin32g4
 - BLDC Motor (Nanotec DB59C024035-A)
 - Spannungsversorgung
 
## 1. Klonen des Git Repository

Für die Nutzung des vorliegenden Quellcode ist ein Github beziehungsweise Gitlab Account notwendig. 
Für die Verwendung innerhalb von Windows sind die folgende Tools zu installieren:
 - Git for Windows
 - TortoiseGit

Dabei kann entsprechend dieser Anleitung vorgegangen werden:
https://articles.assembla.com/en/articles/748191-set-up-git-on-windows-with-tortoisegit

Nachdem der Git Account in dem das Online-Repository vorliegt in TortoiseGit registriert 
wurde, kann ein lokales Repository als Klon über das Rechtsklickmenü erstellt werden.

Nun lässt sich mit den typischen Git Funktionalitäten das Repository verwalten.

## 2. Start der STM32CubeIDE

Liegt das Git Repository für die feldorientierte Regelung im lokalen Ordner vor, so kann im nächsten Schritt
die Projektdatei mit der Entwicklungsumgebung gestartet werden.

Es bietet sich die Nutzung der STM32CubeIDE von ST an:
https://www.st.com/en/development-tools/stm32cubeide.html

Nach der Installation, lässt sich die Projektdatei \sensorless\STM32CubeIDE\.project 
in den Workspace der IDE laden.




## 3. Flashen des Quellcode

## 4. Start des Motor Control Pilot

## 5. Verifikation & Validierung


### 5.2 Validierung des Prüfstands

## 6. Fazit




