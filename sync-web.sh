#!/bin/bash
# -*- coding: utf-8 -*-
#   This script synchronizes the local copy of the web assets with the dev site.
#   Copyright (C) 2017 Marc Lijour
#   https://www.linkedin.com/in/marclijour
#   https://github.com/marclijour
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU Affero General Public License as
#   published by the Free Software Foundation, either version 3 of the
#   License, or (at your option) any later version.
#
#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU Affero General Public License for more details.
#
#   You should have received a copy of the GNU Affero General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.
host=$1
if [ -z $host ]; then
	host=www.collider-x.org 
fi
echo Downloading web assets from $host 
wget -mk https://$host
wget -mkEpnp https://${host}/june-2017-conferences/
wget -mkEpnp https://${host}/collaborate/

