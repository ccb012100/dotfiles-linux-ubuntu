#!/usr/bin/env bash
apt list --installed | awk -F"/" '{print $1}'