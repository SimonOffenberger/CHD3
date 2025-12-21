#!/usr/bin/env python3

"""
Based on VUnit's VHDL User Guide
--------------------------------

The most minimal VUnit VHDL project covering the basics of the
:ref:`User Guide <user_guide>`.
"""

from pathlib import Path
from vunit import VUnit

VU = VUnit.from_argv()

RTL_PATH = Path(__file__).resolve().parents[1] / "rtl"
TB_PATH = Path(__file__).resolve().parents[1] / "tb"

GRP_PATH = Path(__file__).resolve().parents[2] 
#print("Grp Path:", GRP_PATH.absolute())

UNITS_PATH = Path(__file__).resolve().parents[3]
#print("Units Path:", UNITS_PATH.absolute())

lib = VU.add_library("lib")

# Packages
lib.add_source_files(UNITS_PATH / "grpPackages" / "*" / "rtl" / "*.vhd")

lib.add_source_files(RTL_PATH / "*.vhd")
lib.add_source_files(TB_PATH / "*.vhd")

VU.main()
