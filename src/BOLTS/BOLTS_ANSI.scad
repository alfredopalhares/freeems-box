include <common/conf.scad>
include <common/common.scad>
include <common/version.scad>
include <base/washer.scad>
include <base/bearings.scad>
include <base/hex.scad>
include <base/nut.scad>
include <base/pipe.scad>
include <base/hex_socket.scad>
include <tables/hexagonnut3_table.scad>
module ANSI_B18_2_2(key="3/8 in"){
	check_parameter_type("ANSI B18.2.2","key",key,"Table Index");

	measures_0 = hexagonnut3_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ANSI B18.2.2, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","nut"," ","ANSI B18.2.2"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"in"), convert_to_default_unit(measures_0[1],"in"), convert_to_default_unit(measures_0[2],"in"));
	}
}

function ANSI_B18_2_2_dims(key="3/8 in") = [
	["s", convert_to_default_unit(hexagonnut3_table_0(key)[1],"in")],
	["d1", convert_to_default_unit(hexagonnut3_table_0(key)[0],"in")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonnut3_table_0(key)[2],"in")]];

