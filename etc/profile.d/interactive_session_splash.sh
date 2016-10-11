################################################################################
#################################### Microway Cluster Management Software (MCMS)
################################################################################
#
# This tool takes inspiration and code from several projects:
#
#   SLURM interactive script - Copyright (C) 2013 Alan Orth
#   https://github.com/alanorth/hpc_infrastructure_scripts/
#
#   sinteractive
#     * originally written by Pär Andersson (National Supercomputer Centre,
#       Sweden) and published in the SLURM FAQ.
#     * Small changes by Paul Mezzanini - Rochester Institute of Technology
#     * Major changes by Josh McSavaney - Rochester Institute of Technology
#
#
# Modified scripts (with bugfixes and additional feature support):
#   Copyright (C) 2015 Microway, Inc. All rights reserved.
#   http://www.microway.com
#
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
################################################################################


################################################################################
#
# Show a splash screen for interactive sessions on Compute Nodes
#
################################################################################

# Interactive sessions will set the SPLASH_RCFILE variable
if [[ -n "$SPLASH_RCFILE" ]]; then
    source $SPLASH_RCFILE
fi
 

