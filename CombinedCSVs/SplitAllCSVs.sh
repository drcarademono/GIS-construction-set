./xsv partition region region Bandits.csv --filename {}_Bandits.csv
./xsv partition region region Bandits_Roadside.csv --filename {}_Bandits_Roadside.csv
./xsv partition region region BannerPosts.csv --filename {}_BannerPosts.csv
./xsv partition region region BorderTowers.csv --filename {}_Border_Towers.csv
./xsv partition region region Guardtowers_Roadside.csv --filename {}_Guardtowers_Roadside.csv
./xsv partition region region LoggingCamps.csv --filename {}_LoggingCamps.csv
./xsv partition region region Mountains.csv --filename {}_Mountains.csv
./xsv partition region region Mountains_Small.csv --filename {}_Mountains_Small.csv
./xsv partition region region OrcCamps.csv --filename {}_OrcCamps.csv
./xsv partition region region Rocks.csv --filename {}_Rocks.csv
./xsv partition region region Ruins.csv --filename {}_Ruins.csv
./xsv partition region region Ruins_Roadside.csv --filename {}_Ruins_Roadside.csv
./xsv partition region region Shrines.csv --filename {}_Shrines.csv
./xsv partition region region Shrines_Roadside.csv --filename {}_Shrines_Roadside.csv

mv region Locations
cd Locations
mkdir Abibon-Gora
mv Abibongora*.csv Abibon-Gora

mkdir Alcaire
mv Alcaire*.csv Alcaire

mkdir "Alik'r Desert"
mv AlikrDesert*.csv "Alik'r Desert"

mkdir Anticlere
mv Anticlere*.csv Anticlere

mkdir Antiphyllos
mv Antiphyllos*.csv Antiphyllos

mkdir Ayasofya
mv Ayasofya*.csv Ayasofya

mkdir Bergama
mv Bergama*.csv Bergama

mkdir Betony
mv Betony*.csv Betony

mkdir Bhoriane
mv Bhoriane*.csv Bhoriane

mkdir Cybiades
mv Cybiades*.csv Cybiades

mkdir Daenia
mv Daenia*.csv Daenia

mkdir Daggerfall
mv Daggerfall*.csv Daggerfall

mkdir "Dak'fron"
mv Dakfron*.csv "Dak'fron"

mkdir "Dragontail Mountains"
mv DragontailMountains*.csv "Dragontail Mountains"

mkdir Dwynnen
mv Dwynnen*.csv Dwynnen

mkdir Ephesus
mv Ephesus*.csv Ephesus

mkdir Gavaudon
mv Gavaudon*.csv Gavaudon

mkdir Glenpoint
mv Glenpoint*.csv Glenpoint

mkdir "Glenumbra Moors"
mv GlenumbraMoors*.csv "Glenumbra Moors"

mkdir "Ilessan Hills"
mv IlessanHills*.csv "Ilessan Hills"

mkdir "Isle of Balfiera"
mv IsleofBalfiera*.csv "Isle of Balfiera"

mkdir Kairou
mv Kairou*.csv Kairou

mkdir Kambria
mv Kambria*.csv Kambria

mkdir Koegria
mv Koegria*.csv Koegria

mkdir Kozanset
mv Kozanset*.csv Kozanset

mkdir Lainlyn
mv Lainlyn*.csv Lainlyn

mkdir Menevia
mv Menevia*.csv Menevia

mkdir Mournoth
mv Mournoth*.csv Mournoth

mkdir Myrkwasa
mv Myrkwasa*.csv Myrkwasa

mkdir Northmoor
mv Northmoor*.csv Northmoor

mkdir "Orsinium Area"
mv OrsiniumArea*.csv "Orsinium Area"

mkdir Phrygias
mv Phrygias*.csv Phrygias

mkdir Pothago
mv Pothago*.csv Pothago

mkdir Santaki
mv Santaki*.csv Santaki

mkdir Satakalaam
mv Satakalaam*.csv Satakalaam

mkdir Sentinel
mv Sentinel*.csv Sentinel

mkdir Shalgora
mv Shalgora*.csv Shalgora

mkdir Tigonus
mv Tigonus*.csv Tigonus

mkdir Totambu
mv Totambu*.csv Totambu

mkdir Tulune
mv Tulune*.csv Tulune

mkdir Urvaius
mv Urvaius*.csv Urvaius

mkdir Wayrest
mv Wayrest*.csv Wayrest

mkdir "Wrothgarian Mountains"
mv WrothgarianMountains*.csv "Wrothgarian Mountains"

mkdir Ykalon
mv Ykalon*.csv Ykalon
