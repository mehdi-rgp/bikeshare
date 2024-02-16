-- Removing the " caused from loading file from the data fields (run time: 378 sec)

UPDATE bikeshare.tripdata2023
SET ride_id = REPLACE(ride_id, '"', ''),
    rideable_type = REPLACE(rideable_type, '"', ''),
	started_at = REPLACE(started_at, '"', ''),
	ended_at = REPLACE(ended_at, '"', ''),
	start_station_name = REPLACE(start_station_name, '"', ''),
    start_station_id = REPLACE(start_station_id, '"', ''),
    end_station_name = REPLACE(end_station_name, '"', ''),
    end_station_id = REPLACE(end_station_id, '"', ''),
    member_casual = REPLACE(member_casual, '"', '');


-- Delete rows with empty start_station or end_station
-- result: 1387808 row(s) affected

DELETE FROM bikeshare.tripdata2023 as td
where td.start_station_name = '' or td.end_station_name = '';


-- Modifieng inconsistencies in start_station_name and start_station_id

UPDATE bikeshare.tripdata2023 SET start_station_id = '15541' WHERE start_station_id = '15541.1.1';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Buckingham Fountain' WHERE start_station_id = '15541';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'California Ave & Francis Pl' WHERE start_station_id = '13259';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21390' WHERE start_station_name = 'California Ave & Marquette Rd';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Campbell Ave & Montrose Ave' WHERE start_station_id = '15623';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21396' WHERE start_station_name = 'Central Ave & Roscoe St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '329' WHERE start_station_name = 'Central Park Ave & Douglas Blvd';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20' WHERE start_station_name = 'Damen Ave & Wabansia Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '23001' WHERE start_station_name = 'Elizabeth St & Randolph St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '202480' WHERE start_station_name = 'Hampden Ct & Diversey Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '332' WHERE start_station_name = 'Harding Ave & 26th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '364' WHERE start_station_name = 'Homan Ave & Fillmore St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '330' WHERE start_station_name = 'Keeler Ave & Roosevelt Rd';
UPDATE bikeshare.tripdata2023 SET start_station_id = '333' WHERE start_station_name = 'Kildare & Cermak';
UPDATE bikeshare.tripdata2023 SET start_station_id = '365' WHERE start_station_name = 'Kildare Ave & 26th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21374' WHERE start_station_name = 'Kilpatrick Ave & Grand Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '335' WHERE start_station_name = 'Komensky Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '23321' WHERE start_station_name = 'Kostner Ave & Wrightwood Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21357' WHERE start_station_name = 'Lamon Ave & Armitage Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '362' WHERE start_station_name = 'Lawndale Ave & 16th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '334' WHERE start_station_name = 'Lawndale Ave & 30th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21462' WHERE start_station_name = 'Lincoln Ave & Peterson Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21312' WHERE start_station_name = 'Lockwood Ave & Wrightwood Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21320' WHERE start_station_name = 'MTV Hubbard St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20251' WHERE start_station_name = 'N Carpenter St & W Lake St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20249' WHERE start_station_name = 'N Clark St & W Elm St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20255' WHERE start_station_name = 'N Damen Ave & W Chicago Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20246' WHERE start_station_name = 'N Green St & W Lake St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20253' WHERE start_station_name = 'N Paulina St & Lincoln Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20256' WHERE start_station_name = 'N Sheffield Ave & W Wellington Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20257' WHERE start_station_name = 'N Southport Ave & W Newport Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '21354' WHERE start_station_name = 'Parkside Ave & Armitage Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20260' WHERE start_station_name = 'Ping Tom Park (East)';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1128' WHERE start_station_name = 'Public Rack - 4810 Keeler Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1092' WHERE start_station_name = 'Public Rack - 56th St & Mulligan Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1085' WHERE start_station_name = 'Public Rack - 63rd Pl & Narraganssett Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1076' WHERE start_station_name = 'Public Rack - 82nd st & Kedzie Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1201' WHERE start_station_name = 'Public Rack - Austin & Higgins';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1215' WHERE start_station_name = 'Public Rack - Avers & Granville';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1226' WHERE start_station_name = 'Public Rack - Avers & Lawrence';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1150' WHERE start_station_name = 'Public Rack - Bryn Mawr Ave & Spaulding Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1266' WHERE start_station_name = 'Public Rack - California & 87th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1191' WHERE start_station_name = 'Public Rack - Central & Berteau';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1192' WHERE start_station_name = 'Public Rack - Central & Leland';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1119' WHERE start_station_name = 'Public Rack - Central Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1102' WHERE start_station_name = 'Public Rack - Central Ave & Pensacola Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1222' WHERE start_station_name = 'Public Rack - Central Park & Bryn Mawr';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1217' WHERE start_station_name = 'Public Rack - Christiana & Lincoln';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1242' WHERE start_station_name = 'Public Rack - Cicero & 64th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1108' WHERE start_station_name = 'Public Rack - Cicero Ave & Belle Plaine Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1182' WHERE start_station_name = 'Public Rack - Cumberland & Catherine';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1272' WHERE start_station_name = 'Public Rack - Damen & 81st';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1274' WHERE start_station_name = 'Public Rack - Damen & 87th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1181' WHERE start_station_name = 'Public Rack - Delphina & Foster';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1212' WHERE start_station_name = 'Public Rack - Forest Glen & Peterson';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1284' WHERE start_station_name = 'Public Rack - Forest Glen Station ';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1142' WHERE start_station_name = 'Public Rack - Haft Ave & Milwaukee Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1241' WHERE start_station_name = 'Public Rack - Harlem and W. 59th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1175' WHERE start_station_name = 'Public Rack - Hiawatha & Mendota';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1135' WHERE start_station_name = 'Public Rack - Higgins Ave & Neva Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1276' WHERE start_station_name = 'Public Rack - Hollywood Park';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1264' WHERE start_station_name = 'Public Rack - Homan & 79th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1176' WHERE start_station_name = 'Public Rack - Imlay & Milwaukee';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1104' WHERE start_station_name = 'Public Rack - Irving Park Rd & Austin Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1104' WHERE start_station_name = 'PPublic Rack - Irving Park Rd & Austin Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1113' WHERE start_station_name = 'Public Rack - Irving Park Rd & Leclaire Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1103' WHERE start_station_name = 'Public Rack - Irving Park Rd & Menard Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1105' WHERE start_station_name = 'Public Rack - Irving Park Rd & Parkside Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1127' WHERE start_station_name = 'Public Rack - Karlov Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1211' WHERE start_station_name = 'Public Rack - Keating & Peterson';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1147' WHERE start_station_name = 'Public Rack - Kedvale Ave & Peterson Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1179' WHERE start_station_name = 'Public Rack - Kedzie Ave & 83rd St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1225' WHERE start_station_name = 'Public Rack - Kenneth & Carmen';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1219' WHERE start_station_name = 'Public Rack - Kimball & Ardmore';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1134' WHERE start_station_name = 'Public Rack - Kimball Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1161' WHERE start_station_name = 'Public Rack - Kinzua Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '335' WHERE start_station_name = 'Public Rack - Komensky Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1220' WHERE start_station_name = 'Public Rack - Kostner & Bryn Mawr';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1213' WHERE start_station_name = 'Public Rack - Kostner & Peterson';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1126' WHERE start_station_name = 'Public Rack - Laramine Ave & Winnemac Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1203' WHERE start_station_name = 'Public Rack - Lavergne & Lawrence';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1132' WHERE start_station_name = 'Public Rack - Lawrence Ave & Kimball Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1209' WHERE start_station_name = 'Public Rack - Leader & Caldwell';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1204' WHERE start_station_name = 'Public Rack - Leamington & Elston';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1149' WHERE start_station_name = 'Public Rack - Lemont Ave & Keating Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1084' WHERE start_station_name = 'Public Rack - Linder Ave & 64th Pl';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1235' WHERE start_station_name = 'Public Rack - Lockwood & Archer';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1225' WHERE start_station_name = 'Public Rack - Lotus Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1124' WHERE start_station_name = 'Public Rack - Kenneth & Carmen';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1205' WHERE start_station_name = 'Public Rack - Lynch & Elston';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1202' WHERE start_station_name = 'Public Rack - Mango & Higgins';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1097' WHERE start_station_name = 'Public Rack - Meade Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1200' WHERE start_station_name = 'Public Rack - Melvina & Foster';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1100' WHERE start_station_name = 'Public Rack - Melvina Ave & Montrose Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1120' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Catalpa Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1110' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Culyer Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1121' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Higgins Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1125' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Kennedy Expy';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1123' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1115' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Leland Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1112' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Pensacola Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1109' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Sunnyside Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1107' WHERE start_station_name = 'Public Rack - Milwaukee Ave & Warner Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1166' WHERE start_station_name = 'Public Rack - Minnehaha Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1090' WHERE start_station_name = 'Public Rack - Minuteman Park';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1095' WHERE start_station_name = 'Public Rack - Mobile Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1227' WHERE start_station_name = 'Public Rack - Monticello & Lawrence';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1196' WHERE start_station_name = 'Public Rack - Mulligan & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1091' WHERE start_station_name = 'Public Rack - Mulligan Ave & 56th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1180' WHERE start_station_name = 'Public Rack - N. Oakview and W. Gregory St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1199' WHERE start_station_name = 'Public Rack - Nagel & Higgins';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1195' WHERE start_station_name = 'Public Rack - Nashotah & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1088' WHERE start_station_name = 'Public Rack - Natoma Ave & 61st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1140' WHERE start_station_name = 'Public Rack - Natoma Ave & Bryn Mawr Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1231' WHERE start_station_name = 'Public Rack - Neenah & Archer';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1190' WHERE start_station_name = 'Public Rack - Neenah & Dakin';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1189' WHERE start_station_name = 'Public Rack - Neva & Foster';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1229' WHERE start_station_name = 'Public Rack - Nordica & Archer';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1117' WHERE start_station_name = 'Public Rack - Nordica Ave & Higgins Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1089' WHERE start_station_name = 'Public Rack - Normandy Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1198' WHERE start_station_name = 'Public Rack - Oak Park & Higgins';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1155' WHERE start_station_name = 'Public Rack - Olmstead Ave & Oliphant Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1171' WHERE start_station_name = 'Public Rack - Overhill Ave & Touhy Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1154' WHERE start_station_name = 'Public Rack - Ozanam Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1184' WHERE start_station_name = 'Public Rack - Ozman & Talcott';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1240' WHERE start_station_name = 'Public Rack - Parkside & 63rd';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1236' WHERE start_station_name = 'Public Rack - Parkside & Archer';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1277' WHERE start_station_name = 'Public Rack - Peterson Park';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1152' WHERE start_station_name = 'Public Rack - Pratt Ave & Odell Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1255' WHERE start_station_name = 'Public Rack - Pulaski & 74th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1260' WHERE start_station_name = 'Public Rack - Pulaski & 84th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1221' WHERE start_station_name = 'Public Rack - Pulaski & Ardmore';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1214' WHERE start_station_name = 'Public Rack - Pulaski & Rosemont';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1148' WHERE start_station_name = 'Public Rack - Pulaski Rd & Stevens Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1257' WHERE start_station_name = 'Public Rack - S. Kilpatrick and W. 79th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1080' WHERE start_station_name = 'Public Rack - Spaulding Ave & 71st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1256' WHERE start_station_name = 'Public Rack - Springfield & 79th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1131' WHERE start_station_name = 'Public Rack - Springfield Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1216' WHERE start_station_name = 'Public Rack - St Louis & Lincoln';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1172' WHERE start_station_name = 'Public Rack - Touhy Ave & Oconto Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1252' WHERE start_station_name = 'Public Rack - Troy & 71st';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1278' WHERE start_station_name = 'Public Rack - Wentworth Park';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1269' WHERE start_station_name = 'Public Rack - Western & 79th';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1271' WHERE start_station_name = 'Public Rack - Western & 83rd';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1280' WHERE start_station_name = 'Public Rack - Wilbur Wright College South';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1122' WHERE start_station_name = 'Public Rack - Winona St & Elston Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '331' WHERE start_station_name = 'Pulaski Rd & 21st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '366' WHERE start_station_name = 'Spaulding Ave & 16th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '653B' WHERE start_station_name = 'Stony Island Ave & 63rd St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '363' WHERE start_station_name = 'Tripp Ave & 15th St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '368' WHERE start_station_name = 'Tripp Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20254' WHERE start_station_name = 'W Armitage Ave & N Sheffield Ave';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20252' WHERE start_station_name = 'W Oakdale Ave & N Broadway';
UPDATE bikeshare.tripdata2023 SET start_station_id = '20247' WHERE start_station_name = 'W Washington Blvd & N Peoria St';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Fort Dearborn Dr & 31st St' WHERE start_station_name = 'Fort Dearborn Dr & 31st St*';
UPDATE bikeshare.tripdata2023 SET start_station_id = 'TA1307000048' WHERE start_station_name = 'Fort Dearborn Dr & 31st St';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wilton Ave & Diversey Pkwy' WHERE start_station_name = 'Wilton Ave & Diversey Pkwy*';
UPDATE bikeshare.tripdata2023 SET start_station_id = 'chargingstx2' WHERE start_station_name = 'Wilton Ave & Diversey Pkwy';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Komensky Ave & 31st St' WHERE start_station_id = '335';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Campbell Ave & Augusta Blvd' WHERE start_station_id = '410';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Kildare Ave & Division St' WHERE start_station_id = '303';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Halsted St & Clybourn Ave' WHERE start_station_id = '331';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Komensky Ave & 31st St' WHERE start_station_id = '335';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Campbell Ave & Augusta Blvd' WHERE start_station_id = '410';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Ridge Blvd & Howard St' WHERE start_station_id = '514';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Clark St & Jarvis Ave' WHERE start_station_id = '517';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Conservatory Dr & Lake St' WHERE start_station_id = '518';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wolcott Ave & Fargo Ave' WHERE start_station_id = '519';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Greenview Ave & Jarvis Ave' WHERE start_station_id = '520';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Eastlake Ter & Howard St' WHERE start_station_id = '523';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Glenwood Ave & Touhy Ave' WHERE start_station_id = '525';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Pulaski Rd & Lake St' WHERE start_station_id = '528';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Karlov Ave & Madison St' WHERE start_station_id = '534';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Public Rack - Keeler Ave & 26th St' WHERE start_station_id = '536';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Kenton Ave & Madison St' WHERE start_station_id = '537';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Laramie Ave & Gladys Ave' WHERE start_station_id = '543';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Kostner Ave & Adams St' WHERE start_station_id = '545';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Damen Ave & Pershing Rd' WHERE start_station_id = '546';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Marshfield Ave & 44th St' WHERE start_station_id = '549';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Damen Ave & 51st St' WHERE start_station_id = '554';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Racine Ave & Garfield Blvd' WHERE start_station_id = '559';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Marshfield Ave & 59th St' WHERE start_station_id = '560';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Damen Ave & 59th St' WHERE start_station_id = '561';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Racine Ave & 61st St' WHERE start_station_id = '562';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Racine Ave & 65th St' WHERE start_station_id = '564';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'May St & 69th St' WHERE start_station_id = '567';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Woodlawn Ave & 75th St' WHERE start_station_id = '569';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Evans Ave & 75th St' WHERE start_station_id = '570';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Vernon Ave & 75th St' WHERE start_station_id = '571';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'State St & 76th St' WHERE start_station_id = '572';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'State St & 79th St' WHERE start_station_id = '573';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Vernon Ave & 79th St' WHERE start_station_id = '574';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Cottage Grove Ave & 78th St' WHERE start_station_id = '575';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Stony Island Ave & South Chicago Ave' WHERE start_station_id = '577';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Phillips Ave & 79th St' WHERE start_station_id = '579';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Stony Island Ave & 82nd St' WHERE start_station_id = '583';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Ellis Ave & 83rd St' WHERE start_station_id = '584';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Cottage Grove Ave & 83rd St' WHERE start_station_id = '585';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'MLK Jr Dr & 83rd St' WHERE start_station_id = '586';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'South Chicago Ave & 83rd St' WHERE start_station_id = '588';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Western Blvd & 48th Pl' WHERE start_station_id = '594';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wabash Ave & 87th St' WHERE start_station_id = '595';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Orleans St & Chestnut St (NEXT Apts)' WHERE start_station_id = '620';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Michigan Ave & 8th St' WHERE start_station_id = '623';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Dearborn St & Van Buren St' WHERE start_station_id = '624';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Malcolm X College' WHERE start_station_id = '631';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Orleans St & Hubbard St' WHERE start_station_id = '636';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wood St & Chicago Ave' WHERE start_station_id = '637';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Clinton St & Jackson Blvd' WHERE start_station_id = '638';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Lakefront Trail & Wilson Ave' WHERE start_station_id = '639';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Latrobe Ave & Chicago Ave' WHERE start_station_id = '642';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Smith Park' WHERE start_station_id = '643';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Western Ave & Fillmore St' WHERE start_station_id = '644';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'State St & 54th St' WHERE start_station_id = '646';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Elizabeth St & 59th St' WHERE start_station_id = '647';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Stewart Ave & 63rd St' WHERE start_station_id = '649';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Eggleston Ave & 69th St' WHERE start_station_id = '650';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Michigan Ave & 71st St' WHERE start_station_id = '651';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Racine Ave & Washington Blvd' WHERE start_station_id = '654';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wood St & Augusta Blvd' WHERE start_station_id = '657';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Leavitt St & Division St' WHERE start_station_id = '658';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Sheridan Rd & Columbia Ave' WHERE start_station_id = '660';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Evanston Civic Center' WHERE start_station_id = '661';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Dodge Ave & Mulford St' WHERE start_station_id = '662';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE start_station_id = '1179';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Public Rack - Kilpatrick & Elston' WHERE start_station_id = '1225';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Noble St & Milwaukee Ave' WHERE start_station_id = '13290';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Woodlawn & 103rd' WHERE start_station_id = '20133';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Kedzie Ave & 24th St' WHERE start_station_id = 'KA1504000086';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Pulaski Rd & Eddy St' WHERE start_station_id = 'KA1504000141';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Racine Ave & Fullerton Ave' WHERE start_station_id = 'TA1306000026';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wentworth Ave & 24th St' WHERE start_station_id = 'TA1308000026';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Lincoln Ave & Melrose St' WHERE start_station_id = 'TA1309000042';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE start_station_name = 'Public Rack - Oketo & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1179' WHERE start_station_name = 'Public Rack - Oketo & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Wentworth Ave & Cermak Rd' WHERE start_station_name = 'Wentworth Ave & Cermak Rd*';
UPDATE bikeshare.tripdata2023 SET start_station_id = '13075' WHERE start_station_name = 'Wentworth Ave & Cermak Rd*';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1179' WHERE start_station_name = 'tempxx99';
UPDATE bikeshare.tripdata2023 SET start_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE start_station_name = 'tempxx99';
UPDATE bikeshare.tripdata2023 SET start_station_id = '13075' WHERE start_station_id = 'chargingstx07';
UPDATE bikeshare.tripdata2023 SET start_station_id = '1224' WHERE start_station_id = '1225';
UPDATE bikeshare.tripdata2023v3 SET start_station_name = 'Streeter Dr & Grand Ave' WHERE start_station_id = 'PI00002';
UPDATE bikeshare.tripdata2023v3 SET start_station_id = '13022' WHERE start_station_id = 'PI00002';


-- Modifieng inconsistencies in end_station_name and end_station_id

UPDATE bikeshare.tripdata2023 SET end_station_id = '15541' WHERE end_station_id = '15541.1.1';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Buckingham Fountain' WHERE end_station_id = '15541';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'California Ave & Francis Pl' WHERE end_station_id = '13259';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21390' WHERE end_station_name = 'California Ave & Marquette Rd';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Campbell Ave & Montrose Ave' WHERE end_station_id = '15623';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21396' WHERE end_station_name = 'Central Ave & Roscoe St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '329' WHERE end_station_name = 'Central Park Ave & Douglas Blvd';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20' WHERE end_station_name = 'Damen Ave & Wabansia Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '23001' WHERE end_station_name = 'Elizabeth St & Randolph St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '202480' WHERE end_station_name = 'Hampden Ct & Diversey Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '332' WHERE end_station_name = 'Harding Ave & 26th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '364' WHERE end_station_name = 'Homan Ave & Fillmore St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '330' WHERE end_station_name = 'Keeler Ave & Roosevelt Rd';
UPDATE bikeshare.tripdata2023 SET end_station_id = '333' WHERE end_station_name = 'Kildare & Cermak';
UPDATE bikeshare.tripdata2023 SET end_station_id = '365' WHERE end_station_name = 'Kildare Ave & 26th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21374' WHERE end_station_name = 'Kilpatrick Ave & Grand Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '335' WHERE end_station_name = 'Komensky Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '23321' WHERE end_station_name = 'Kostner Ave & Wrightwood Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21357' WHERE end_station_name = 'Lamon Ave & Armitage Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '362' WHERE end_station_name = 'Lawndale Ave & 16th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '334' WHERE end_station_name = 'Lawndale Ave & 30th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21462' WHERE end_station_name = 'Lincoln Ave & Peterson Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21312' WHERE end_station_name = 'Lockwood Ave & Wrightwood Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21320' WHERE end_station_name = 'MTV Hubbard St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20251' WHERE end_station_name = 'N Carpenter St & W Lake St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20249' WHERE end_station_name = 'N Clark St & W Elm St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20255' WHERE end_station_name = 'N Damen Ave & W Chicago Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20246' WHERE end_station_name = 'N Green St & W Lake St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20253' WHERE end_station_name = 'N Paulina St & Lincoln Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20256' WHERE end_station_name = 'N Sheffield Ave & W Wellington Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20257' WHERE end_station_name = 'N Southport Ave & W Newport Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '21354' WHERE end_station_name = 'Parkside Ave & Armitage Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20260' WHERE end_station_name = 'Ping Tom Park (East)';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1128' WHERE end_station_name = 'Public Rack - 4810 Keeler Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1092' WHERE end_station_name = 'Public Rack - 56th St & Mulligan Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1085' WHERE end_station_name = 'Public Rack - 63rd Pl & Narraganssett Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1076' WHERE end_station_name = 'Public Rack - 82nd st & Kedzie Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1201' WHERE end_station_name = 'Public Rack - Austin & Higgins';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1215' WHERE end_station_name = 'Public Rack - Avers & Granville';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1226' WHERE end_station_name = 'Public Rack - Avers & Lawrence';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1150' WHERE end_station_name = 'Public Rack - Bryn Mawr Ave & Spaulding Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1266' WHERE end_station_name = 'Public Rack - California & 87th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1191' WHERE end_station_name = 'Public Rack - Central & Berteau';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1192' WHERE end_station_name = 'Public Rack - Central & Leland';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1119' WHERE end_station_name = 'Public Rack - Central Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1102' WHERE end_station_name = 'Public Rack - Central Ave & Pensacola Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1222' WHERE end_station_name = 'Public Rack - Central Park & Bryn Mawr';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1217' WHERE end_station_name = 'Public Rack - Christiana & Lincoln';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1242' WHERE end_station_name = 'Public Rack - Cicero & 64th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1108' WHERE end_station_name = 'Public Rack - Cicero Ave & Belle Plaine Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1182' WHERE end_station_name = 'Public Rack - Cumberland & Catherine';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1272' WHERE end_station_name = 'Public Rack - Damen & 81st';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1274' WHERE end_station_name = 'Public Rack - Damen & 87th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1181' WHERE end_station_name = 'Public Rack - Delphina & Foster';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1212' WHERE end_station_name = 'Public Rack - Forest Glen & Peterson';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1284' WHERE end_station_name = 'Public Rack - Forest Glen Station ';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1142' WHERE end_station_name = 'Public Rack - Haft Ave & Milwaukee Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1241' WHERE end_station_name = 'Public Rack - Harlem and W. 59th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1175' WHERE end_station_name = 'Public Rack - Hiawatha & Mendota';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1135' WHERE end_station_name = 'Public Rack - Higgins Ave & Neva Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1276' WHERE end_station_name = 'Public Rack - Hollywood Park';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1264' WHERE end_station_name = 'Public Rack - Homan & 79th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1176' WHERE end_station_name = 'Public Rack - Imlay & Milwaukee';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1104' WHERE end_station_name = 'Public Rack - Irving Park Rd & Austin Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1104' WHERE end_station_name = 'PPublic Rack - Irving Park Rd & Austin Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1113' WHERE end_station_name = 'Public Rack - Irving Park Rd & Leclaire Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1103' WHERE end_station_name = 'Public Rack - Irving Park Rd & Menard Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1105' WHERE end_station_name = 'Public Rack - Irving Park Rd & Parkside Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1127' WHERE end_station_name = 'Public Rack - Karlov Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1211' WHERE end_station_name = 'Public Rack - Keating & Peterson';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1147' WHERE end_station_name = 'Public Rack - Kedvale Ave & Peterson Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1179' WHERE end_station_name = 'Public Rack - Kedzie Ave & 83rd St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1225' WHERE end_station_name = 'Public Rack - Kenneth & Carmen';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1219' WHERE end_station_name = 'Public Rack - Kimball & Ardmore';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1134' WHERE end_station_name = 'Public Rack - Kimball Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1161' WHERE end_station_name = 'Public Rack - Kinzua Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '335' WHERE end_station_name = 'Public Rack - Komensky Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1220' WHERE end_station_name = 'Public Rack - Kostner & Bryn Mawr';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1213' WHERE end_station_name = 'Public Rack - Kostner & Peterson';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1126' WHERE end_station_name = 'Public Rack - Laramine Ave & Winnemac Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1203' WHERE end_station_name = 'Public Rack - Lavergne & Lawrence';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1132' WHERE end_station_name = 'Public Rack - Lawrence Ave & Kimball Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1209' WHERE end_station_name = 'Public Rack - Leader & Caldwell';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1204' WHERE end_station_name = 'Public Rack - Leamington & Elston';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1149' WHERE end_station_name = 'Public Rack - Lemont Ave & Keating Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1084' WHERE end_station_name = 'Public Rack - Linder Ave & 64th Pl';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1235' WHERE end_station_name = 'Public Rack - Lockwood & Archer';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1225' WHERE end_station_name = 'Public Rack - Lotus Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1124' WHERE end_station_name = 'Public Rack - Kenneth & Carmen';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1205' WHERE end_station_name = 'Public Rack - Lynch & Elston';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1202' WHERE end_station_name = 'Public Rack - Mango & Higgins';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1097' WHERE end_station_name = 'Public Rack - Meade Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1200' WHERE end_station_name = 'Public Rack - Melvina & Foster';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1100' WHERE end_station_name = 'Public Rack - Melvina Ave & Montrose Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1120' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Catalpa Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1110' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Culyer Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1121' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Higgins Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1125' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Kennedy Expy';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1123' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1115' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Leland Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1112' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Pensacola Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1109' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Sunnyside Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1107' WHERE end_station_name = 'Public Rack - Milwaukee Ave & Warner Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1166' WHERE end_station_name = 'Public Rack - Minnehaha Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1090' WHERE end_station_name = 'Public Rack - Minuteman Park';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1095' WHERE end_station_name = 'Public Rack - Mobile Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1227' WHERE end_station_name = 'Public Rack - Monticello & Lawrence';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1196' WHERE end_station_name = 'Public Rack - Mulligan & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1091' WHERE end_station_name = 'Public Rack - Mulligan Ave & 56th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1180' WHERE end_station_name = 'Public Rack - N. Oakview and W. Gregory St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1199' WHERE end_station_name = 'Public Rack - Nagel & Higgins';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1195' WHERE end_station_name = 'Public Rack - Nashotah & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1088' WHERE end_station_name = 'Public Rack - Natoma Ave & 61st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1140' WHERE end_station_name = 'Public Rack - Natoma Ave & Bryn Mawr Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1231' WHERE end_station_name = 'Public Rack - Neenah & Archer';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1190' WHERE end_station_name = 'Public Rack - Neenah & Dakin';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1189' WHERE end_station_name = 'Public Rack - Neva & Foster';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1229' WHERE end_station_name = 'Public Rack - Nordica & Archer';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1117' WHERE end_station_name = 'Public Rack - Nordica Ave & Higgins Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1089' WHERE end_station_name = 'Public Rack - Normandy Ave & Archer Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1198' WHERE end_station_name = 'Public Rack - Oak Park & Higgins';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1155' WHERE end_station_name = 'Public Rack - Olmstead Ave & Oliphant Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1171' WHERE end_station_name = 'Public Rack - Overhill Ave & Touhy Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1154' WHERE end_station_name = 'Public Rack - Ozanam Ave & Devon Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1184' WHERE end_station_name = 'Public Rack - Ozman & Talcott';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1240' WHERE end_station_name = 'Public Rack - Parkside & 63rd';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1236' WHERE end_station_name = 'Public Rack - Parkside & Archer';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1277' WHERE end_station_name = 'Public Rack - Peterson Park';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1152' WHERE end_station_name = 'Public Rack - Pratt Ave & Odell Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1255' WHERE end_station_name = 'Public Rack - Pulaski & 74th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1260' WHERE end_station_name = 'Public Rack - Pulaski & 84th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1221' WHERE end_station_name = 'Public Rack - Pulaski & Ardmore';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1214' WHERE end_station_name = 'Public Rack - Pulaski & Rosemont';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1148' WHERE end_station_name = 'Public Rack - Pulaski Rd & Stevens Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1257' WHERE end_station_name = 'Public Rack - S. Kilpatrick and W. 79th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1080' WHERE end_station_name = 'Public Rack - Spaulding Ave & 71st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1256' WHERE end_station_name = 'Public Rack - Springfield & 79th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1131' WHERE end_station_name = 'Public Rack - Springfield Ave & Lawrence Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1216' WHERE end_station_name = 'Public Rack - St Louis & Lincoln';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1172' WHERE end_station_name = 'Public Rack - Touhy Ave & Oconto Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1252' WHERE end_station_name = 'Public Rack - Troy & 71st';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1278' WHERE end_station_name = 'Public Rack - Wentworth Park';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1269' WHERE end_station_name = 'Public Rack - Western & 79th';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1271' WHERE end_station_name = 'Public Rack - Western & 83rd';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1280' WHERE end_station_name = 'Public Rack - Wilbur Wright College South';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1122' WHERE end_station_name = 'Public Rack - Winona St & Elston Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '331' WHERE end_station_name = 'Pulaski Rd & 21st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '366' WHERE end_station_name = 'Spaulding Ave & 16th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '653B' WHERE end_station_name = 'Stony Island Ave & 63rd St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '363' WHERE end_station_name = 'Tripp Ave & 15th St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '368' WHERE end_station_name = 'Tripp Ave & 31st St';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20254' WHERE end_station_name = 'W Armitage Ave & N Sheffield Ave';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20252' WHERE end_station_name = 'W Oakdale Ave & N Broadway';
UPDATE bikeshare.tripdata2023 SET end_station_id = '20247' WHERE end_station_name = 'W Washington Blvd & N Peoria St';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Fort Dearborn Dr & 31st St' WHERE end_station_name = 'Fort Dearborn Dr & 31st St*';
UPDATE bikeshare.tripdata2023 SET end_station_id = 'TA1307000048' WHERE end_station_name = 'Fort Dearborn Dr & 31st St';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wilton Ave & Diversey Pkwy' WHERE end_station_name = 'Wilton Ave & Diversey Pkwy*';
UPDATE bikeshare.tripdata2023 SET end_station_id = 'chargingstx2' WHERE end_station_name = 'Wilton Ave & Diversey Pkwy';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Komensky Ave & 31st St' WHERE end_station_id = '335';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Campbell Ave & Augusta Blvd' WHERE end_station_id = '410';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Kildare Ave & Division St' WHERE end_station_id = '303';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Halsted St & Clybourn Ave' WHERE end_station_id = '331';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Komensky Ave & 31st St' WHERE end_station_id = '335';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Campbell Ave & Augusta Blvd' WHERE end_station_id = '410';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Ridge Blvd & Howard St' WHERE end_station_id = '514';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Clark St & Jarvis Ave' WHERE end_station_id = '517';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Conservatory Dr & Lake St' WHERE end_station_id = '518';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wolcott Ave & Fargo Ave' WHERE end_station_id = '519';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Greenview Ave & Jarvis Ave' WHERE end_station_id = '520';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Eastlake Ter & Howard St' WHERE end_station_id = '523';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Glenwood Ave & Touhy Ave' WHERE end_station_id = '525';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Pulaski Rd & Lake St' WHERE end_station_id = '528';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Karlov Ave & Madison St' WHERE end_station_id = '534';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Keeler Ave & 26th St' WHERE end_station_id = '536';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Kenton Ave & Madison St' WHERE end_station_id = '537';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Laramie Ave & Gladys Ave' WHERE end_station_id = '543';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Kostner Ave & Adams St' WHERE end_station_id = '545';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Damen Ave & Pershing Rd' WHERE end_station_id = '546';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Marshfield Ave & 44th St' WHERE end_station_id = '549';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Damen Ave & 51st St' WHERE end_station_id = '554';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Racine Ave & Garfield Blvd' WHERE end_station_id = '559';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Marshfield Ave & 59th St' WHERE end_station_id = '560';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Damen Ave & 59th St' WHERE end_station_id = '561';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Racine Ave & 61st St' WHERE end_station_id = '562';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Racine Ave & 65th St' WHERE end_station_id = '564';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'May St & 69th St' WHERE end_station_id = '567';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Woodlawn Ave & 75th St' WHERE end_station_id = '569';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Evans Ave & 75th St' WHERE end_station_id = '570';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Vernon Ave & 75th St' WHERE end_station_id = '571';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'State St & 76th St' WHERE end_station_id = '572';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'State St & 79th St' WHERE end_station_id = '573';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Vernon Ave & 79th St' WHERE end_station_id = '574';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Cottage Grove Ave & 78th St' WHERE end_station_id = '575';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Stony Island Ave & South Chicago Ave' WHERE end_station_id = '577';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Phillips Ave & 79th St' WHERE end_station_id = '579';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Stony Island Ave & 82nd St' WHERE end_station_id = '583';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Ellis Ave & 83rd St' WHERE end_station_id = '584';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Cottage Grove Ave & 83rd St' WHERE end_station_id = '585';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'MLK Jr Dr & 83rd St' WHERE end_station_id = '586';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'South Chicago Ave & 83rd St' WHERE end_station_id = '588';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Western Blvd & 48th Pl' WHERE end_station_id = '594';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wabash Ave & 87th St' WHERE end_station_id = '595';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Orleans St & Chestnut St (NEXT Apts)' WHERE end_station_id = '620';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Michigan Ave & 8th St' WHERE end_station_id = '623';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Dearborn St & Van Buren St' WHERE end_station_id = '624';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Malcolm X College' WHERE end_station_id = '631';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Orleans St & Hubbard St' WHERE end_station_id = '636';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wood St & Chicago Ave' WHERE end_station_id = '637';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Clinton St & Jackson Blvd' WHERE end_station_id = '638';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Lakefront Trail & Wilson Ave' WHERE end_station_id = '639';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Latrobe Ave & Chicago Ave' WHERE end_station_id = '642';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Smith Park' WHERE end_station_id = '643';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Western Ave & Fillmore St' WHERE end_station_id = '644';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'State St & 54th St' WHERE end_station_id = '646';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Elizabeth St & 59th St' WHERE end_station_id = '647';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Stewart Ave & 63rd St' WHERE end_station_id = '649';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Eggleston Ave & 69th St' WHERE end_station_id = '650';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Michigan Ave & 71st St' WHERE end_station_id = '651';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Racine Ave & Washington Blvd' WHERE end_station_id = '654';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wood St & Augusta Blvd' WHERE end_station_id = '657';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Leavitt St & Division St' WHERE end_station_id = '658';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Sheridan Rd & Columbia Ave' WHERE end_station_id = '660';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Evanston Civic Center' WHERE end_station_id = '661';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Dodge Ave & Mulford St' WHERE end_station_id = '662';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE end_station_id = '1179';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Kilpatrick & Elston' WHERE end_station_id = '1225';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Noble St & Milwaukee Ave' WHERE end_station_id = '13290';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Woodlawn & 103rd' WHERE end_station_id = '20133';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Kedzie Ave & 24th St' WHERE end_station_id = 'KA1504000086';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Pulaski Rd & Eddy St' WHERE end_station_id = 'KA1504000141';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Racine Ave & Fullerton Ave' WHERE end_station_id = 'TA1306000026';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wentworth Ave & 24th St' WHERE end_station_id = 'TA1308000026';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Lincoln Ave & Melrose St' WHERE end_station_id = 'TA1309000042';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE end_station_name = 'Public Rack - Oketo & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1179' WHERE end_station_name = 'Public Rack - Oketo & Northwest Hwy';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wentworth Ave & Cermak Rd' WHERE end_station_name = 'Wentworth Ave & Cermak Rd*';
UPDATE bikeshare.tripdata2023 SET end_station_id = '13075' WHERE end_station_name = 'Wentworth Ave & Cermak Rd*';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1179' WHERE end_station_name = 'tempxx99';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE end_station_name = 'tempxx99';
UPDATE bikeshare.tripdata2023 SET end_station_id = '13075' WHERE end_station_id = 'chargingstx07';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Paulina St & Howard St' WHERE end_station_id = '515';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Pulaski Rd & Congress Pkwy' WHERE end_station_id = '535';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Laramie Ave & Madison St' WHERE end_station_id = '540';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Greenwood Ave & 79th St' WHERE end_station_id = '576';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Exchange Ave & 79th St' WHERE end_station_id = '580';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Wabash Ave & 83rd St' WHERE end_station_id = '587';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Knox Ave & Montrose Ave' WHERE end_station_id = '592';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Benson Ave & Church St' WHERE end_station_id = '596';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Sheridan Rd & Noyes St (NU)' WHERE end_station_id = '604';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'University Library (NU)' WHERE end_station_id = '605';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Public Rack - Kedzie Ave & 83rd St' WHERE end_station_id = '1179';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1224' WHERE end_station_name = 'Public Rack - Kilpatrick & Elston';
UPDATE bikeshare.tripdata2023 SET end_station_id = '1179' WHERE end_station_name = 'Public Rack - Kedzie Ave & 83rd St';
UPDATE bikeshare.tripdata2023 SET end_station_name = 'Streeter Dr & Grand Ave' WHERE end_station_id = 'PI00002';
UPDATE bikeshare.tripdata2023 SET end_station_id = '13022' WHERE end_station_id = 'PI00002';




-- creating a station table consisiting of start and end stations to make sure start and end station have unified name and id. and also set a unique (lat, lng) for each station.

DROP TABLE IF EXISTS bikeshare.stations;
CREATE TABLE bikeshare.stations AS
select 'id', 'station_name', 'lat', 'lng', 'from_which'
union all
select start_station_id, start_station_name, start_lat, start_lng, 'start' 
from bikeshare.tripdata2023
union all
select end_station_id, end_station_name, end_lat, end_lng, 'end'
from bikeshare.tripdata2023;


-- add a temporary unique key
alter table stations
add temp_id int AUTO_INCREMENT KEY;

-- Removing duplicate pairs of (id, station_name) to create a list of stations with unique id, name, lat, lng
-- following query took 4420 seconds in which [8662640 row(s) affected]. in Power BI it took a few seconds!
DELETE FROM stations
WHERE temp_id IN (
    SELECT temp_id
    FROM (
        SELECT
            temp_id,
            ROW_NUMBER() OVER (
                PARTITION BY id, station_name
                ORDER BY temp_id
            ) AS rn
        FROM
            stations
    ) AS subquery
    WHERE rn > 1
);

-- after deletion of duplicate (station name, id) pairs, only one conflic is remaining: "Public Rack - Kilpatrick & Elston", id from end_station_id is 1224, from start_station_id is 1225
-- to resolve, we change the start_station_id to 1224 in the tripdata2023 table and delete the row with id 1224 in station table.

-- Delete the row with id 1225
DELETE FROM stations
WHERE id = '1225';

UPDATE bikeshare.tripdata2023 SET START_station_id = '1224' WHERE START_station_name = 'Public Rack - Kilpatrick & Elston';

-- Delete the temporart fields temp_id,  from_which
ALTER TABLE stations
DROP from_which,
DROP temp_id;

-- Now we have a list of stations with unique name,id, lat, lng
-- We should now change the corresponding data in our main table tripdate2023
-- We do that by joining the tripdata2023 table and station table and adding the cleaned fields id, lat, lng

drop table if exists bikeshare.tripdata2023_cleaned;
CREATE TABLE bikeshare.tripdata2023_cleaned AS
select td.ride_id, td.rideable_type, td.started_at, td.ended_at, td.start_station_id, td.end_station_id, td.member_casual
from bikeshare.tripdata2023 as td
left join (
select s.id as tsid, s.station_name as start_station_name, s.lat as start_lat, s.lng as start_lng
from stations as s
) as ss
ON td.start_station_id = ss.tsid
left join (
select s.id as teid, s.station_name as end_station_name, s.lat as end_lat, s.lng as end_lng
from stations as s
) as es
ON td.end_station_id = es.teid;

alter table tripdata2023_cleaned
drop tsid,
drop teid;


