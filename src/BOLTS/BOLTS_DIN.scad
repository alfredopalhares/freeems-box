include <common/conf.scad>
include <common/common.scad>
include <common/version.scad>
include <base/washer.scad>
include <base/bearings.scad>
include <base/hex.scad>
include <base/nut.scad>
include <base/pipe.scad>
include <base/hex_socket.scad>
include <tables/hexscrew1_table.scad>
include <tables/hexbolt1_table.scad>
include <tables/din11850range2_table.scad>
include <tables/hexagonthinnut2_table.scad>
include <tables/hexagonnut2_table.scad>
include <tables/singlerowradialbearing_table.scad>
include <tables/axialthrustbearing_table.scad>
include <tables/plainwasher2_table.scad>
include <tables/plainwasherforcheesehead_table.scad>
include <tables/heavydutyplainwasher_table.scad>
module DIN933(key="M3", l=20){
	echo("Warning: The standard DIN933 is withdrawn.
Although withdrawn standards are often still in use,
it might be better to use its successor None instead");
	check_parameter_type("DIN933","key",key,"Table Index");
	check_parameter_type("DIN933","l",l,"Length (mm)");

	measures_0 = hexscrew1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN933, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","screw"," ","DIN933"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[4],"mm"), l);
	}
}

function DIN933_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexscrew1_table_0(key)[3],"mm")],
	["h", convert_to_default_unit(hexscrew1_table_0(key)[4],"mm")],
	["k", convert_to_default_unit(hexscrew1_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexscrew1_table_0(key)[2],"mm")],
	["key", key],
	["d1", convert_to_default_unit(hexscrew1_table_0(key)[0],"mm")]];

module DIN931(key="M3", l=20){
	echo("Warning: The standard DIN931 is withdrawn.
Although withdrawn standards are often still in use,
it might be better to use its successor DINEN24014 instead");
	check_parameter_type("DIN931","key",key,"Table Index");
	check_parameter_type("DIN931","l",l,"Length (mm)");

	measures_0 = hexbolt1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN931, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","bolt"," ","DIN931"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), l);
	}
}

function DIN931_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexbolt1_table_0(key)[6],"mm")],
	["key", key],
	["k", convert_to_default_unit(hexbolt1_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexbolt1_table_0(key)[2],"mm")],
	["b1", convert_to_default_unit(hexbolt1_table_0(key)[3],"mm")],
	["b2", convert_to_default_unit(hexbolt1_table_0(key)[4],"mm")],
	["b3", convert_to_default_unit(hexbolt1_table_0(key)[5],"mm")],
	["d1", convert_to_default_unit(hexbolt1_table_0(key)[0],"mm")]];

module DIN11850_Range_2(dn="10", l=1000){
	check_parameter_type("DIN11850 Range 2","dn",dn,"Table Index");
	check_parameter_type("DIN11850 Range 2","l",l,"Length (mm)");

	measures_0 = din11850range2_table_0(dn);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN11850 Range 2, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","DIN11850"," ","Range"," ","2"," ","DN"," ",dn," ","length"," ",l," "));
		cube();
	} else {
		pipe(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), l);
	}
}

function DIN11850_Range_2_dims(dn="10", l=1000) = [
	["dn", dn],
	["od", convert_to_default_unit(din11850range2_table_0(dn)[1],"mm")],
	["l", l],
	["id", convert_to_default_unit(din11850range2_table_0(dn)[0],"mm")]];

module DIN439B(key="M3"){
	echo("Warning: The standard DIN439B is withdrawn.
Although withdrawn standards are often still in use,
it might be better to use its successor DINENISO4035 instead");
	check_parameter_type("DIN439B","key",key,"Table Index");

	measures_0 = hexagonthinnut2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN439B, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","thin"," ","nut"," ","DIN439B"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN439B_dims(key="M3") = [
	["e_min", convert_to_default_unit(hexagonthinnut2_table_0(key)[3],"mm")],
	["s", convert_to_default_unit(hexagonthinnut2_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexagonthinnut2_table_0(key)[0],"mm")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonthinnut2_table_0(key)[2],"mm")]];

module DIN934(key="M3"){
	echo("Warning: The standard DIN934 is withdrawn.
Although withdrawn standards are often still in use,
it might be better to use its successor ISO4032 instead");
	check_parameter_type("DIN934","key",key,"Table Index");

	measures_0 = hexagonnut2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN934, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","nut"," ","DIN934"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN934_dims(key="M3") = [
	["e_min", convert_to_default_unit(hexagonnut2_table_0(key)[3],"mm")],
	["s", convert_to_default_unit(hexagonnut2_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexagonnut2_table_0(key)[0],"mm")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonnut2_table_0(key)[2],"mm")]];

module DIN625_1(key="608", type="open"){
	check_parameter_type("DIN625-1","key",key,"Table Index");
	check_parameter_type("DIN625-1","type",type,"Table Index");

	measures_0 = singlerowradialbearing_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN625-1, table 0");
	}
	measures_1 = singlerowradialbearing_table_1(type);
	if(measures_1 == "Error"){
		echo("TableLookUpError in DIN625-1, table 1");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Ball"," ","bearing"," ","DIN625-1"," ",key," "));
		cube();
	} else {
		singlerowradialbearing(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN625_1_dims(key="608", type="open") = [
	["B", convert_to_default_unit(singlerowradialbearing_table_0(key)[2],"mm")],
	["postfix", singlerowradialbearing_table_1(type)[0]],
	["type", type],
	["key", key],
	["d2", convert_to_default_unit(singlerowradialbearing_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(singlerowradialbearing_table_0(key)[0],"mm")]];

module DIN711(key="51200"){
	check_parameter_type("DIN711","key",key,"Table Index");

	measures_0 = axialthrustbearing_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN711, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Axial"," ","thrust"," ","bearing"," ","DIN711"," ",key," "));
		cube();
	} else {
		axialthrustbearing(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN711_dims(key="51200") = [
	["D", convert_to_default_unit(axialthrustbearing_table_0(key)[1],"mm")],
	["T", convert_to_default_unit(axialthrustbearing_table_0(key)[2],"mm")],
	["key", key],
	["d", convert_to_default_unit(axialthrustbearing_table_0(key)[0],"mm")]];

module DIN125A(key="M3"){
	check_parameter_type("DIN125A","key",key,"Table Index");

	measures_0 = plainwasher1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN125A, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DIN125A"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN125A_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasher1_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher1_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher1_table_0(key)[0],"mm")]];

module DIN125B(key="M3"){
	check_parameter_type("DIN125B","key",key,"Table Index");

	measures_0 = plainwasherchamfered_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN125B, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","with"," ","chamfer"," ","DIN125B"," ","-"," ",key," "));
		cube();
	} else {
		washer2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN125B_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherchamfered_table_0(key)[0],"mm")]];

module DIN126(key="M10"){
	check_parameter_type("DIN126","key",key,"Table Index");

	measures_0 = plainwasher2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN126, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DIN126"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN126_dims(key="M10") = [
	["s", convert_to_default_unit(plainwasher2_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher2_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher2_table_0(key)[0],"mm")]];

module DIN433(key="M3"){
	check_parameter_type("DIN433","key",key,"Table Index");

	measures_0 = plainwasherforcheesehead_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN433, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DIN433"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN433_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[0],"mm")]];

module DIN7349(key="M10"){
	check_parameter_type("DIN7349","key",key,"Table Index");

	measures_0 = heavydutyplainwasher_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN7349, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Heavy"," ","duty"," ","plain"," ","washer"," ","DIN7349"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DIN7349_dims(key="M10") = [
	["s", convert_to_default_unit(heavydutyplainwasher_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(heavydutyplainwasher_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(heavydutyplainwasher_table_0(key)[0],"mm")]];

module DIN7991(key="M3", l=20){
	check_parameter_type("DIN7991","key",key,"Table Index");
	check_parameter_type("DIN7991","l",l,"Length (mm)");

	measures_0 = hexsocketcountersunk_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN7991, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","countersunk"," ","head"," ","screw"," ","DIN7991"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), convert_to_default_unit(measures_0[7],"mm"), convert_to_default_unit(measures_0[9],"mm"), convert_to_default_unit(measures_0[10],"mm"), l);
	}
}

function DIN7991_dims(key="M3", l=20) = [
	["b2", convert_to_default_unit(hexsocketcountersunk_table_0(key)[3],"mm")],
	["h_max", convert_to_default_unit(hexsocketcountersunk_table_0(key)[10],"mm")],
	["l", l],
	["L", convert_to_default_unit(hexsocketcountersunk_table_0(key)[9],"mm")],
	["k_max", convert_to_default_unit(hexsocketcountersunk_table_0(key)[5],"mm")],
	["s", convert_to_default_unit(hexsocketcountersunk_table_0(key)[6],"mm")],
	["t", convert_to_default_unit(hexsocketcountersunk_table_0(key)[7],"mm")],
	["key", key],
	["b3", convert_to_default_unit(hexsocketcountersunk_table_0(key)[4],"mm")],
	["alpha", convert_to_default_unit(hexsocketcountersunk_table_0(key)[8],"mm")],
	["d1", convert_to_default_unit(hexsocketcountersunk_table_0(key)[0],"mm")],
	["d2", convert_to_default_unit(hexsocketcountersunk_table_0(key)[1],"mm")],
	["b1", convert_to_default_unit(hexsocketcountersunk_table_0(key)[2],"mm")]];

module DIN912(key="M3", l=20){
	check_parameter_type("DIN912","key",key,"Table Index");
	check_parameter_type("DIN912","l",l,"Length (mm)");

	measures_0 = hexsocketheadcap_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DIN912, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","head"," ","cap"," ","screw"," ","DIN912"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), l);
	}
}

function DIN912_dims(key="M3", l=20) = [
	["b", convert_to_default_unit(hexsocketheadcap_table_0(key)[2],"mm")],
	["t_min", convert_to_default_unit(hexsocketheadcap_table_0(key)[5],"mm")],
	["k", convert_to_default_unit(hexsocketheadcap_table_0(key)[3],"mm")],
	["l", l],
	["L", convert_to_default_unit(hexsocketheadcap_table_0(key)[6],"mm")],
	["s", convert_to_default_unit(hexsocketheadcap_table_0(key)[4],"mm")],
	["key", key],
	["d2", convert_to_default_unit(hexsocketheadcap_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexsocketheadcap_table_0(key)[0],"mm")]];

