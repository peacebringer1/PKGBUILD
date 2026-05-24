#!/bin/sh

DISTRIBUTION=$(cat /etc/os-release | grep "^ID")
DIRECTORY="/work"

detect_distribution() {
    if [ $DISTRIBUTION = "ID=debian" ]; then
        DISTRIBUTION="debian"
    elif [ $DISTRIBUTION = "ID=arch" ]; then
        DISTRIBUTION="arch"
    else
        DISTRIBUTION="UNKNOWN"
    fi
}

__arch_install_packages(){
    PACKAGE_FILE="$DIRECTORY/arch-dependencies.txt"
    package_list=$(cat $PACKAGE_FILE)
    $(pacman -Syu --noconfirm $package_list)
}

__debian_install_packages(){
    PACKAGE_FILE="$DIRECTORY/debian-dependencies.txt"
    package_list=$(cat $PACKAGE_FILE)
    $(apt update -y && apt upgrade -y)
    # echo "PACKAGES: $package_list"
    $(apt install $package_list)
}

install_packages(){
    if [ $DISTRIBUTION = "debian" ]; then
        # error 127 if unknown package
        __debian_install_packages
    elif [ $DISTRIBUTION = "arch" ]; then
        # error 127 if unknown package
        __arch_install_packages
    else
        echo "Cannot install dependencies, because distribution is unsupported"
    fi
}

detect_distribution
install_packages

