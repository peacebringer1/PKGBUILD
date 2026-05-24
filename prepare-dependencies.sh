#!/bin/sh

DISTRIBUTION=$(cat /etc/os-release | grep "^ID")

detect_distribution() {
    if [ $DISTRIBUTION = "ID=debian" ]; then
        DISTRIBUTION="debian"
    elif [ $DISTRIBUTION = "ID=arch" ]; then
        DISTRIBUTION="arch"
    else
        DISTRIBUTION="UNKNOWN"
    fi
}

detect_distribution

