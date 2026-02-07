#!/usr/bin/env bash

NAME="protonvpn"
PASS="$HOME/.vpn/pass"

if ip a | grep -qF "tun0"; then
    nmcli con down "$NAME"
else
    nmcli con up "$NAME" passwd-file "$PASS"
fi
