#!/usr/bin/env bash

set -euo pipefail

echo "======================================================"
echo " Tools for Software Engineering"
echo " Environment Setup"
echo "======================================================"

export DEBIAN_FRONTEND=noninteractive

echo
echo "[1/6] Updating package lists..."
apt-get update

echo
echo "[2/6] Installing development tools..."
apt-get install -y \
    build-essential \
    gdb \
    git \
    vim \
    nano

echo
echo "[3/6] Installing command-line and text-processing tools..."
apt-get install -y \
    grep \
    sed \
    gawk \
    findutils \
    coreutils \
    tree \
    jq \
    zip \
    unzip \
    tar \
    gzip \
    curl \
    wget

echo
echo "[4/6] Installing networking tools..."
apt-get install -y \
    openssh-client \
    openssh-server \
    telnet \
    netcat-openbsd \
    traceroute \
    iputils-ping \
    dnsutils \
    net-tools

echo
echo "[5/6] Installing visualization tools..."
apt-get install -y \
    graphviz \
    gnuplot-nox

echo
echo "[6/6] Installing Python..."
apt-get install -y \
    python3 \
    python3-pip \
    python3-venv

echo
echo "Creating course Python environment..."

if [ ! -d /opt/course-venv ]; then
    python3 -m venv /opt/course-venv
fi

/opt/course-venv/bin/pip install --upgrade pip

/opt/course-venv/bin/pip install \
    matplotlib \
    numpy \
    pandas \
    requests

echo
echo "Environment installation complete."
