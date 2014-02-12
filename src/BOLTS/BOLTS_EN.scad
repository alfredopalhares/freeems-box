include <common/conf.scad>
include <common/common.scad>
include <common/version.scad>
include <base/washer.scad>
include <base/bearings.scad>
include <base/hex.scad>
include <base/nut.scad>
include <base/pipe.scad>
include <base/hex_socket.scad>
module EN7089(key="M3"){
	check_parameter_type("EN7089","key",key,"Table Index");

	measures_0 = plainwasher1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in EN7089, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","EN7089"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function EN7089_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasher1_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher1_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher1_table_0(key)[0],"mm")]];

