#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="PL-22-ZTM-Gdansk"

PTNA_TIMEZONE="Europe/Warsaw"

OVERPASS_QUERY="https://overpass-api.de/api/interpreter?data=area(rel(11772296));(rel(area)[~'route'~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[~'type'~'route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r);node(w);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Zarząd Transportu Miejskiego w Gdańsku"
NETWORK_SHORT="ZTM Gdańsk"

ANALYSIS_PAGE="Gdańsk/Public_Transport/Analysis"
ANALYSIS_TALK="Talk:Gdańsk/Public_Transport/Analysis"
WIKI_ROUTES_PAGE="Gdańsk/Public_Transport/Analysis/ZTM"

ANALYSIS_OPTIONS="--language=pl_PL --check-gtfs --link-gtfs --show-gtfs --gtfs-feed=$PREFIX --max-error=10 --check-access --check-way-type --check-service-type --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --language=de
# --check-bus-stop
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# Name + Link to Analysis Result Page on server
# automatically build by PHP script

# Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Warszawa, Polska i jej obszar miejski"
PTNA_WWW_REGION_LINK="https://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B%0Arelation%28id%3A11772296%29%3B%0Aout+body%3B%0A>%3B%0Aout+skel+qt%3B"

# Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Zarząd Transportu Miejskiego Warszawa"
PTNA_WWW_NETWORK_LINK="https://www.ztm.waw.pl/"

# Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Discussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="ZTM Warszawa Linie"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"
