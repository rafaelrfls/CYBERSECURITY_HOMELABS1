#!/bin/bash

source api_virustotal.env

if [ -z "$1" ]; then
	echo "Uso: $0 <IP>"
	exit 1
fi

IP="$1"
URL="https://www.virustotal.com/api/v3/ip_addresses/$IP"

response=$(curl -s -X GET "$URL" \
	-H "x-apikey: $API_KEY")

# Verifica se houve erro
if echo "$response" | jq -e '.error' > /dev/null; then
  echo "Could not get IP:"
  echo "$response" | jq '.error.message'
  exit 1
fi
echo
echo "==============================="
echo "VirusTotal IP Search"
echo "==============================="
echo
echo "IP: $IP"
echo "REPUTATION: $(echo "$response" | jq '.data.attributes.reputation')"
echo "JARM: $(echo "$response" | jq '.data.attributes.jarm')"
echo
echo "OWNER: $(echo "$response" | jq '.data.attributes.as_owner')"
echo "COUNTRY: $(echo "$response" | jq -r '.data.attributes.country')"
echo "CONTINENT: $(echo "$response" | jq -r '.data.attributes.continent')"
echo "------------------------------------------------------"
echo
echo "ANALYSIS STATS:"
echo "Malicious:  $(echo "$response" | jq '.data.attributes.last_analysis_stats.malicious')"
echo "Suspicious: $(echo "$response" | jq '.data.attributes.last_analysis_stats.suspicious')"
echo "Harmless:   $(echo "$response" | jq '.data.attributes.last_analysis_stats.harmless')"
echo "Undetected: $(echo "$response" | jq '.data.attributes.last_analysis_stats.undetected')"
echo
echo "LAST ANALYSIS DATE:"
echo "$response" | jq -r '.data.attributes.last_analysis_date | todate'
echo "------------------------------------------------------"
echo
echo "LINK VIRUSTOTAL:"
echo "https://www.virustotal.com/gui/ip-address/$IP"
echo
