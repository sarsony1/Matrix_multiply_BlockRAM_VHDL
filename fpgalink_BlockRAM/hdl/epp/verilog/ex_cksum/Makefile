#
# Copyright (C) 2009-2012 Chris McClelland
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Lesser General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
TOP_LEVEL := top_level
PLATFORM  := nexys2-1200
COMMON    := ../../../common
HDL       := verilog
HDLS      := \
	$(TOP_LEVEL).v \
	$(COMMON)/$(HDL)/seven_seg/seven_seg.v \
	../comm_fpga/comm_fpga_epp.v

include $(COMMON)/top.mk
include $(COMMON)/$(VENDOR).mk
