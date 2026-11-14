#!/usr/bin/env bash

makoctl history -j | jq -r '.[] | "(\(.app_name)) \(.summary): \(.body)"' \
    | fuzzel --dmenu --hide-prompt -l 5 -w 80 -a bottom-right || exit 0
