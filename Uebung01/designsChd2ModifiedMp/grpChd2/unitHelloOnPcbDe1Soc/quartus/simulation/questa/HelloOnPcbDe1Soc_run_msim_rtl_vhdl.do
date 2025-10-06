transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHelloOnPcbDe1Soc/hdl/HelloOnPcbDe1Soc-Struct-a.vhd}
vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHello/hdl/Hello-Rtl-a.vhd}
vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHex2SevenSegment/hdl/Hex2SevenSegment-Rtl-a.vhd}
vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHelloOnPcbDe1Soc/hdl/HelloOnPcbDe1Soc-e.vhd}
vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHello/hdl/Hello-e.vhd}
vcom -2008 -work work {C:/HSD_SEM_3/CHD3/Uebung01/designsChd2ModifiedMp/grpChd2/unitHex2SevenSegment/hdl/Hex2SevenSegment-e.vhd}

