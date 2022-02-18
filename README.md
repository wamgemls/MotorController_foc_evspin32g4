# QuickStartGuide_foc_evspin32g4

Ziel ist die Inbetriebnahme einer feldorientierten Drehzahlregelung auf dem Evaluationboard EVSPIN32G4 von ST mit einem BLDC Motor.
Dieser Quick Start Guide soll den Workflow von der Erstellung des lokalen Git Repository bis hin 
zum Start der feldorientierten Regelung aufzeigen.

Folgende Hardware Komponenten sind zur Inbetriebnahme der feldorientierten Regelung notwendig:
 - Evalutationboard evspin32g4
 - BLDC Motor (Nanotec DB59C024035-A)
 - Spannungsversorgung (min. 24V ~ 5A)
 - Micro-USB Kabel 
 
## 1. Git Repository

Für die Nutzung des vorliegenden Quellcode ist ein Github beziehungsweise Gitlab Account notwendig. 
Für die Verwendung innerhalb von Windows sind die folgende Tools zu installieren:
 - Git for Windows
 - TortoiseGit

Dabei kann entsprechend dieser Anleitung vorgegangen werden:
https://articles.assembla.com/en/articles/748191-set-up-git-on-windows-with-tortoisegit

Das vorliegende Repository wird durch einen Fork in den eigenen Git Account übertragen.
Ist der Git Account in dem der Fork vorliegt in TortoiseGit registriert, kann dann ein lokales Repository 
als Klon über das Rechtsklickmenü erstellt werden.
Dabei kann entsprechend dieser Anleitung vorgegangen werden:

https://tortoisegit.org/docs/tortoisegit/tgit-dug-clone.html

Nun lässt sich mit den typischen Git Funktionalitäten (Commit/Push/Pull/Staging) das Repository verwalten.

## 2. STM32CubeIDE

Liegt das Git Repository für die feldorientierte Regelung im lokalen Ordner vor, so kann im nächsten Schritt
die Projektdatei mit der Entwicklungsumgebung gestartet werden.

Es bietet sich die Nutzung der STM32CubeIDE von ST an:

https://www.st.com/en/development-tools/stm32cubeide.html

Nach der Installation, lässt sich die Projektdatei \sensorless\STM32CubeIDE\.project 
in den Workspace der IDE laden. 
Die IDE basiert auf Eclipse und bietet insofern eine vergleichbare Benutzeroberfläche.

Eine ausführliche Anleitung ist auf der Website von ST abrufbar:

https://www.st.com/resource/en/user_manual/um2609-stm32cubeide-user-guide-stmicroelectronics.pdf

## 3. Flashvorgang

Für den Flashvorgang ist das Evaluationboard mit dem Desktop Computer über ein Micro-USB Kabel zu verbinden.
Darüberhinaus muss das Board ebenfalls bereits mit der Spannungsversorgung bestromt werden, damit das Powermanagement
des Boards beide Mikrocontroller mit ausreichend Leistung versorgt.
Die Versorgung des Boards ausschließlich über USB ist nicht ausreichend für den Flashvorgang sowie der Kommunikation.

Notwendige Treiber liefert die STM32CubeIDE mit, und werden beim erstmaligen Ausführen des Flashvorgangs installiert.
Initialisiert wird der Flashvorgang durch das "Run" Symbol in der Funktionsleiste der IDE.

Innerhalb des Konsolenfensters wird der Prozess dokumentiert.

## 4. Motor Control Pilot

Der Motor Control Pilot (MCP) ist Teil des STM32 Motor Control Software Development Kit (MCSDK), welches 
unter folgender Adresse verfügbar ist:

https://www.st.com/en/embedded-software/x-cube-mcsdk.html#overview

Wichtig ist die Installation einer aktuellen Version (> 5.5.2), da sonst der MCP nicht mitgeliefert wird,
beziehungsweise nicht kompatibel zu dem benannten Evaluationboard ist.

Der MCP bietet die Möglichkeit über die USB Schnittstelle grundsätzliche Steuerungsbefehle an das Evaluationboard zu senden.
Dazu gehört die Auswahl, welche Art der Regelung ausgeführt werden soll (Drehzahl; Drehmoment), 
die Einstellung von Führungssprung oder Rampenfunktion und es lassen sich Regelparameter über die Benutzeroberfläche 
konfigurieren und ändern.

Starten und Stoppen lässt sich dann eine eingestellt Konfiguration ebenfalls über die GUI, sowie über einen Taster am Evaluationboard.
Fehlfunktionen werden ebenfalls durch den MCP visulisiert.

Eine detailierte Dokumentation zum MCP findet sich auf der ST Website der MCSDK:

https://www.st.com/resource/en/user_manual/um2380-stm32-motor-control-sdk-v54-tools-stmicroelectronics.pdf











