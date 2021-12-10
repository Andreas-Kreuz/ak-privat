--ANFANG ######################################################################################
-- Die Zeilen zwischen ANFANG und ENDE in das Lua-Script der eigenen Anlage hineinkopieren, am besten am Ende.
-- oder EEP-Standardscript durch dieses ersetzen
-------------------------------------------------------------------------------------------
--Texturierbaren Zielanzeigen von DL1
--Das ganze funktioniert nur mit den Texturierbaren Zielanzeigen von DL1 Set-Nr.: V15NDL10027
--Diese Tabelle wird von Funktion TramAZ(Anzeige, Liniennummer,Minuten,Zustand) benutzt
--Die aktuellen Daten sind nur Beispiele für die Testanlage, bitte benötigte Daten einpflegen
	Tramlinien = {
						[3571] = {"357","Groß Behälter"}, 
						[3572] = {"357","Leerhausen"},
						[3573] = {"357","Drehmühle"},
						[3574] = {"357","Hochbaum"},
						[2851] = {"285","Bäckerei"},
						[2852] = {"285","Lederhosen"},
						[2853] = {"285","Drehmühle"},
						[2854] = {"285","Hochbaum"},
						[9991] = {"SEV","Hauptbahnhof"},
				}		
				
		
	--Tabelle kann beliebig erweitert/geändert werden, Bedingung ist das die Nummer in [] nur einmal vorkommt und nicht 0 ist , die Texte in "" je nachdem was man anzeigen will
					
	--Aufruf in KP ist dann so: 
	--TramAZ(Zugname,Anzeige,Liniennummer,Minuten,Zustand)
	--wobei:
	--Zugname = fester Begriff, fängt den Namen des auslösenden Zuges in KP auf
	--Anzeige 	= Lua Name der Anzeige, als String , z.B. "#123" , der Rest hinter der Nummer kann weggelassen werden
	--Liniennumer = Nummer aus der Tabelle, welche angezeigt werden soll, z.B. 101, als Zahl
	--Minuten		= Zahl für die Minuten-Anzeige, Text min ist fix
	--Zustand		= 1 = Hinufügen/Aktualisieren, 0 = löschen
	--Wenn Anzeige voll ist wird der Eintrag nicht gespeichert !!!!!
	
	--Hier stehen Beispiele: **********************************************************
	
	--TramAZ(Zugname,"#2194",9991,0,0) für Anzeige in Modell-Nr #1...  357 - Groß Behälter,in 10 Minuten
	--TramAZ(Zugname,"#4",3572,3,1) für Anzeige in Modell-Nr #4...   357 - Leerhausen in 3 Minuten
	
	--TramAZ(Zugname,"#1",3571,0,0) für Anzeige in Modell-Nr #1...   357 - Groß Behälter auf Anzeige löschen
	-- *******************************************************************************	  
	 
-------------------------------------------------------------------------------------------
-- Tabelle TramAnzeigen	Reset
-- hier die Tramanzeigen eintragen, für Rüchsetzfunktion
-- TramAnzeigen{"Anzeige 1","Anzeige 2",...)
-- Anzeige x  = Lua Name der Anzeige als String, z.B. "#123"
-- es werden die Tagtexte der Anzeigen gelöscht, und beim nächsten Aufruf in KP wird die Anzeige aktualisiert.
	TramAnzeigen = {"#2167","#2164","#2944","#2856","#2266","#2193","#2194","#2265","#2856"}		-- <<<<<<<<<<hier Daten einpflegen
-------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------
-- Tram Anzeigen rücksetzen----------------------------------------------------------------
-- benutzt Signal aus Variable Tram_AZ_Reset zum rücksetzen 
-- der in Tabelle TramAnzeigen definierten Anzeigen
-- wenn Signal auf Stellung 1 wechselt, werden die Tagtexte in den Anzeigen gelöscht

	Tram_AZ_Reset = 9999  --<<<<<< hier Signalnummer zum Rücksetzen der Anzeigen eintragen
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-- Meldungen von Modul Tram Anzeige ausgeben in EEP Ereignisfenster
-- Tram_AZ_MELD, 1 = Meldungen werden ausgegeben, 0 = Meldung werden nicht ausgegeben
	Tram_AZ_MELD = 1 --<<<<<<<<< hier Daten einpflegen
-------------------------------------------------------------------------------------------

---------------------------------------------------------------
-- Tram Schild DL1 steuern
-- es können die 5 Zielzeilen angesteuert werden
-- funktioniert seperat durch Aufruf in KP oder durch Lua: in der Regel Aufruf durch Programm
-- DL1_TRAM_Anzeige(Anzeige,Zeile,Linie,Ziel,Abfahrt,Min)
-- wird auch von Routine TramAZ(Zugname,Anzeige,Linie,Min,Status) benutzt, kann aber auch einzeln benutzt werden
-- Anzeige = Lua Name aus Objekteigenschaften als String, es reicht die Nummer, z.B. "#1"
-- Zeile = Zeile in Anzeige die geändert werden soll, Zahl 1 - 5
-- Linie = Name der Linie als String, z.B. "136"
-- Ziel = Ziel der Linie als String, z.B. "Stöcken"
-- Abfahrt = Minuten bis zur Abfahrt als String, z.B. "2"
-- Min = Einheit der Abfahrt als String, z.B. "min"


function DL1_TRAM_Anzeige(Anzeige,Zeile,Linie,Ziel,Abfahrt,Min)
	local gueltig = 0
    if Zeile == 1 then
		Feld1 = 1
		Feld2 = 2
		Feld3 = 3
		Feld4 = 4
		gueltig = 1
	elseif Zeile == 2 then
		Feld1 = 5
		Feld2 = 6
		Feld3 = 7
		Feld4 = 8
		gueltig = 1
	elseif Zeile == 3 then
		Feld1 = 9
		Feld2 = 10
		Feld3 = 11
		Feld4 = 12
		gueltig = 1
	elseif Zeile == 4 then
		Feld1 = 13
		Feld2 = 14
		Feld3 = 15
		Feld4 = 16
		gueltig = 1
	elseif Zeile == 5 then
		Feld1 = 17
		Feld2 = 18
		Feld3 = 19
		Feld4 = 20
		gueltig = 1
	end
	if gueltig == 1 then
		EEPStructureSetTextureText(Anzeige,Feld1,Linie)
		EEPStructureSetTextureText(Anzeige,Feld2,Ziel)
		EEPStructureSetTextureText(Anzeige,Feld3,Abfahrt)
		EEPStructureSetTextureText(Anzeige,Feld4,Min)
		gueltig = 0
	end	

end
---------------------------------------------------------------------------------------------


--===========================================================
-- Aufbereitung Anzeige
-- Function TramAZ(Zugname,Anzeige,Linie,Min,Status)
--###########################################################
	--Aufruf in KP ist dann so: 
	--TramAZ(Zugname,Anzeige,Liniennummer,Minuten,Zustand)
	--wobei:
	--Zugname = fester Begriff, fängt den Namen des auslösenden Zuges in KP auf
	--Anzeige 	= Lua Name der Anzeige, als String , z.B. "#123" , der Rest hinter der Nummer kann weggelassen werden
	--Liniennumer = Nummer aus der Tabelle, welche angezeigt werden soll, z.B. 101, als Zahl
	--Minuten		= Zahl für die Minuten-Anzeige, Text min ist fix
	--Zustand		= 1 = Hinufügen/Aktualisieren, 0 = löschen
	--Wenn Anzeige voll ist wird der Eintrag nicht gespeichert !!!!!
	
	--Hier stehen Beispiele: **********************************************************
	
	--TramAZ(Zugname,"#1",3571,10,1) für Anzeige in Modell-Nr #1...  357 - Groß Behälter,in 10 Minuten
	--TramAZ(Zugname,"#4",3572,3,1) für Anzeige in Modell-Nr #4...   357 - Leerhausen in 3 Minuten
	
	--TramAZ(Zugname,"#1",3571,0,0) für Anzeige in Modell-Nr #1...   357 - Groß Behälter auf Anzeige löschen
	-- *******************************************************************************	  
	 
	-----------------------------------------------------------------
function TramAZ(ZName,Anzeige,Linie,Min,Status)
	if not ZName then ZName = "" end
	local TAnzeige = Anzeige
	local TagText_1 =""
	local Liste = {0,0,0,0,0,999,999,999,999,999,}
	local pos = 0
	local found = 0
	local fpos = 0
	local TStatus = Status
	hresult, TagText_1 = EEPStructureGetTagText(TAnzeige)
	if hresult then	
		local s = TagText_1
		pos = 0 
		for w in string.gmatch(s,"%d+") do
			pos = pos +1
			Liste[pos] = w
		end	  
		pos = 0
		local check = (Tramlinien[Linie])
		if check then 
			local _l = tostring(Linie)
			local _m = tostring(Min)
			pos = 0
            if TStatus == 1 then
				found = 0
				pos = 0 
				fpos = 0
				for w in string.gmatch(s,"%d+") do
					pos = pos +1
					Liste[pos] = w
					if pos < 6 and w == _l then
						found = 1
						fpos = pos
						if Tram_AZ_MELD == 1 then print("Zug: "..ZName.."  ->>> Update   Zeile "..pos.."   Anzeige: "..TAnzeige.." ->> "..(Tramlinien[Linie][1]).."  "..(Tramlinien[Linie][2]).."  ".._m.." min") end
					end
				end
				if found == 1 then
					Liste[fpos + 5] = Min
				end  
				if found == 0 then
					for i = 1,5,1 do
						if Liste[i] == "0" then 
							Liste[i] = Linie 
							Liste[(i+5)] = Min
							if Tram_AZ_MELD == 1 then print("Zug: "..ZName.." ->>> NEU        Zeile "..i.."   Anzeige: "..TAnzeige.." ->> "..(Tramlinien[Linie][1]).."  "..(Tramlinien[Linie][2]).."  ".._m.." min") end
							break 
						end
					end
				end
				TagText_1 = ""
				for i = 1,10,1 do
					TagText_1 = (TagText_1..Liste[i]..":")
				end  
			elseif TStatus == 0 then
				found = 0
				pos = 0 
				fpos = 0
				for w in string.gmatch(s,"%d+") do
					pos = pos + 1
					
					if pos < 6 and w == _l then
						found = 1
						fpos = pos
						if Tram_AZ_MELD == 1 then print("Zug: "..ZName.." ->>> Löschen Zeile "..pos.."   Anzeige:  "..TAnzeige.." ->> "..(Tramlinien[Linie][1]).."  "..(Tramlinien[Linie][2]).."  ".._m.." min") end
					end
				end
				if found == 1 then
					Liste [fpos] = "0"
					Liste[fpos + 5] = "999"
				 	if fpos < 5 then    			-- nicht letzte Zeile gelöscht
						if fpos == 4 then 			-- Zeile 5 nach oben rutschen
						Liste[fpos] = Liste[fpos+1]
						Liste[fpos+5] = Liste[fpos+6]
						Liste[5] = "0"
						Liste[10] = "999"
						end
						if fpos == 3 then			-- Zeile 4 & 5 nach oben rutschen, 5 löschen
						Liste[fpos] = Liste[fpos+1]			-- Zeile 4 nach 3 kopieren 	(Linie)
						Liste[fpos+1] = Liste[fpos+2]		-- Zeile 5 nach 4 kopieren	(Linie)
						Liste[5] = "0"					-- Zeile 5 löschen			(Linie)
						Liste[fpos+5] = Liste[fpos+6]		-- Zeile 9 nach 8 kopieren	(Zeit)
						Liste[fpos+6] = Liste[fpos+7]		-- Zeile 10 nach 9 Kopieren (Zeit)
						Liste[10] = "999"					-- Zeile 10 löschen			(Zeit)
						end
						if fpos == 2 then			-- Zeile 3 - 5 nach oben rutschen
						Liste[fpos] = Liste[fpos+1]			-- Zeile 3 nach 2 kopieren 	(Linie)
						Liste[fpos+1] = Liste[fpos+2]		-- Zeile 4 nach 3 kopieren 	(Linie)
						Liste[fpos+2] = Liste[fpos+3]		-- Zeile 5 nach 4 kopieren	(Linie)
						Liste[5] = "0"					-- Zeile 5 löschen			(Linie)
						Liste[fpos+5] = Liste[fpos+6]		-- Zeile 8 nach 7 kopieren	(Zeit)
						Liste[fpos+6] = Liste[fpos+7]		-- Zeile 9 nach 8 kopieren	(Zeit)
						Liste[fpos+7] = Liste[fpos+8]		-- Zeile 10 nach 9 Kopieren (Zeit)
						Liste[10] = "999"					-- Zeile 10 löschen			(Zeit)
						end	
						if fpos == 1 then			-- Zeile 2 - 5 nach oben rutschen
						Liste[fpos] = Liste[fpos+1]			-- Zeile 2 nach 1 kopieren 	(Linie)
						Liste[fpos+1] = Liste[fpos+2]			-- Zeile 3 nach 2 kopieren 	(Linie)
						Liste[fpos+2] = Liste[fpos+3]		-- Zeile 4 nach 3 kopieren 	(Linie)
						Liste[fpos+3] = Liste[fpos+4]		-- Zeile 5 nach 4 kopieren	(Linie)
						Liste[5] = "0"					-- Zeile 5 löschen			(Linie)
						Liste[fpos+5] = Liste[fpos+6]		-- Zeile 7 nach 6 kopieren	(Zeit)
						Liste[fpos+6] = Liste[fpos+7]		-- Zeile 8 nach 7 kopieren	(Zeit)
						Liste[fpos+7] = Liste[fpos+8]		-- Zeile 9 nach 8 kopieren	(Zeit)
						Liste[fpos+8] = Liste[fpos+9]		-- Zeile 10 nach 9 Kopieren (Zeit)
						Liste[10] = "999"					-- Zeile 10 löschen			(Zeit)
						end
					end
				end	
			  TagText_1 = ""
              for i = 1,10,1 do
                TagText_1 = (TagText_1..Liste[i]..":")
                
            end 
			  EEPStructureSetTagText(TAnzeige,TagText_1)
		end
	else
       print("FEHLER: Linie ->> "..Linie.." ist nicht definiert in Tabelle Tramlinien")
	end
	
	-------------------------------------------------------------------------
	--Sortieren nach Zeit
	local Eingabe =""
	for i = 1,10,1 do
        Eingabe = (Eingabe..Liste[i]..":")
    end 
	local SortListe ={}
	pos = 0 
		for w in string.gmatch(Eingabe,"%d+") do
			pos = pos +1
			SortListe[pos] = tonumber(w)
		end
	local Tabelle ={}
	Tabelle = { [1] = SortListe[6],
				[2] = SortListe[7],
				[3] = SortListe[8],
				[4] = SortListe[9],
				[5] = SortListe[10],
			}
 	local SortListe_1 ={}
	for k,v in spairs(Tabelle, function(t,a,b) return t[b] > t[a] end) do
		table.insert(SortListe_1, SortListe[k])
	end
	for k,v in spairs(Tabelle, function(t,a,b) return t[b] > t[a] end) do
		table.insert(SortListe_1, v)
	end
	TagText_1 = ""  
	for i = 1,10,1 do
        TagText_1 = (TagText_1..SortListe_1[i]..":")
    end 
	EEPStructureSetTagText(TAnzeige,TagText_1)
	for i = 1,5 do
		local TLinie = 0
		local ALinie = ""
		local AZiel = ""
		local AAbfahrt = ""
		local AMin = ""
		TLinie = SortListe_1[i]
		TLinie = tonumber(TLinie)
		if TLinie == 0 then
			ALinie = ""
			AZiel = ""
			AAbfahrt = ""
			AMin = ""
		else
			ALinie = (Tramlinien[TLinie][1])
			AZiel = (Tramlinien[TLinie][2])
			if tonumber(SortListe_1[i+5]) == 0 then
				AAbfahrt = " so" 	-- wenn nicht bereit stehen soll, hier AABfahrt =""
				AMin = "fort"		-- wenn nicht bereit stehen soll, hier AMin =""
			else
				AAbfahrt = tostring(SortListe_1[i+5])
				AMin = "min"
			end	
		end	
			DL1_TRAM_Anzeige(TAnzeige,i,ALinie,AZiel,AAbfahrt,AMin)
	end
	
		
   else
		print("FEHLER in KP ->>>>>> Keine Immobilie mit Name: "..TAnzeige.." vorhanden")
   end
end

--Tram Anzeigen rücksetzen----------------------------------------------------------
-- benutzt Signal aus Variable Tram_AZ_Reset zum rücksetzen 
-- der in TramAnzeigen definierten Anzeigen
-- wenn Signal auf Stellung 1 wechselt, werden die Tagtexte in den Anzeigen gelöscht

EEPRegisterSignal(Tram_AZ_Reset)

_ENV["EEPOnSignal_"..Tram_AZ_Reset] = function(Status)

 if Status == 1 then
	for k,v in pairs(TramAnzeigen) do
	EEPStructureSetTagText(v,"")
	end
 end
end

--Sortierfunktion ----------------------
-- sortiert Strings nach Zahlenformat
-- z.B. 2 ist kleiner 10
----------------------------------------
	function spairs(t, order)
		local keys = {}
		for k in pairs(t) do keys[#keys+1] = k end
		if order then
			table.sort(keys, function(a,b) return order(t, a, b) end)
		else
			table.sort(keys)
		end
		local i = 0
		return function()
			i = i + 1
			if keys[i] then
				return keys[i], t[keys[i]]
			end
		end
	end
	-----------------------------------------

-- Ende Modul Steuerfunktionen für Tram Anzeige DL1
-- #########################################################################################################
-- ENDE ENDE ENDE###########################################################################################


-- Diese Funktion muss nicht zwingend mitkopiert werden, ist aber ganz hilfreich
------------------------------------------------------------------------------------------------
-- zum Beschriften eines beliebigen Modells
-- Aufruf in KP: MBTX(Modellnr,Feldnr,Text)
-- Modellnr = Lua Name aus Objekteigenschaften als String, es reicht die Nummer, z.B. "#1234"
-- Feldnr = Nummer des beschriftbaren Feldes, Zahl z.B. 25
-- Text = Text der Beschriftung als String (max 40 Zeichen bei Nutzung in KP), z.B. "Dies ist ein Test"
-- z.B. Tram Schild von DL1, Laufschrift in Feldnr 25
-- Beispiel MBTX("#1",25,"Dies ist ein Test")

function MBTX(Modellnr,Feldnr,Text)
	EEPStructureSetTextureText(Modellnr,Feldnr,Text)
end	
	