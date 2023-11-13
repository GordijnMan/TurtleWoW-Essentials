#!/bin/bash

# Variable
ADDONSLIST='./AddOnsList.txt'
DISK="$(/usr/bin/du -hs ./AddOns | /usr/bin/awk '{ print $1}')"
VANILLA="$(/usr/bin/ls ./AddOns | /usr/bin/grep -Ev 'Blizzard_|Shagu|pf')"
SHAGU="$(/usr/bin/ls ./AddOns | /usr/bin/grep -E 'Shagu|pf')"


# Function
function list_variables () {
	for v in ${1}; do
		/usr/bin/echo " - ${v}" | tee -a "${ADDONSLIST}"
	done
	/usr/bin/echo | tee -a "${ADDONSLIST}"
}

/usr/bin/echo -e '\nGenerating AddOnsList...\n'
/usr/bin/echo "## Shagu AddOns: $(/usr/bin/echo "${SHAGU}" | /usr/bin/wc -w)" | /usr/bin/tee "${ADDONSLIST}"
list_variables "${SHAGU}"

/usr/bin/echo "## Vanilla AddOns: $(/usr/bin/echo "${VANILLA}" | /usr/bin/wc -w)" | /usr/bin/tee -a "${ADDONSLIST}"
list_variables "${VANILLA}"

/usr/bin/echo "### TOTAL: $(/usr/bin/echo "${SHAGU} ${VANILLA} ${MODS}" | /usr/bin/wc -w) (${DISK})" | /usr/bin/tee -a "${ADDONSLIST}"
/usr/bin/echo
