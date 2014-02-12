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
include <tables/hexscrew2_table.scad>
include <tables/hexbolt1_table.scad>
include <tables/hexbolt2_table.scad>
include <tables/genericpipe_table.scad>
include <tables/din11850range2_table.scad>
include <tables/hexagonthinnut1_table.scad>
include <tables/hexagonthinnut2_table.scad>
include <tables/hexagonnut1_table.scad>
include <tables/hexagonnut2_table.scad>
include <tables/hexagonnut3_table.scad>
include <tables/singlerowradialbearing_table.scad>
include <tables/axialthrustbearing_table.scad>
include <tables/plainwasher1_table.scad>
include <tables/plainwasherchamfered_table.scad>
include <tables/plainwasher2_table.scad>
include <tables/plainwasherforcheesehead_table.scad>
include <tables/heavydutyplainwasher_table.scad>
include <tables/hexsocketcountersunk_table.scad>
include <tables/hexsocketheadcap_table.scad>


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

module ISO4017(key="M3", l=20){
	check_parameter_type("ISO4017","key",key,"Table Index");
	check_parameter_type("ISO4017","l",l,"Length (mm)");

	measures_0 = hexscrew2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO4017, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","screw"," ","ISO4017"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[4],"mm"), l);
	}
}

function ISO4017_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexscrew2_table_0(key)[3],"mm")],
	["h", convert_to_default_unit(hexscrew2_table_0(key)[4],"mm")],
	["k", convert_to_default_unit(hexscrew2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexscrew2_table_0(key)[2],"mm")],
	["key", key],
	["d1", convert_to_default_unit(hexscrew2_table_0(key)[0],"mm")]];

module DINENISO4017(key="M3", l=20){
	check_parameter_type("DINENISO4017","key",key,"Table Index");
	check_parameter_type("DINENISO4017","l",l,"Length (mm)");

	measures_0 = hexscrew2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO4017, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","screw"," ","DINENISO4017"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[4],"mm"), l);
	}
}

function DINENISO4017_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexscrew2_table_0(key)[3],"mm")],
	["h", convert_to_default_unit(hexscrew2_table_0(key)[4],"mm")],
	["k", convert_to_default_unit(hexscrew2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexscrew2_table_0(key)[2],"mm")],
	["key", key],
	["d1", convert_to_default_unit(hexscrew2_table_0(key)[0],"mm")]];

module DINEN24017(key="M3", l=20){
	check_parameter_type("DINEN24017","key",key,"Table Index");
	check_parameter_type("DINEN24017","l",l,"Length (mm)");

	measures_0 = hexscrew2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINEN24017, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","screw"," ","DINEN24017"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[4],"mm"), l);
	}
}

function DINEN24017_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexscrew2_table_0(key)[3],"mm")],
	["h", convert_to_default_unit(hexscrew2_table_0(key)[4],"mm")],
	["k", convert_to_default_unit(hexscrew2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexscrew2_table_0(key)[2],"mm")],
	["key", key],
	["d1", convert_to_default_unit(hexscrew2_table_0(key)[0],"mm")]];

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

module ISO4014(key="M3", l=20){
	check_parameter_type("ISO4014","key",key,"Table Index");
	check_parameter_type("ISO4014","l",l,"Length (mm)");

	measures_0 = hexbolt2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO4014, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","bolt"," ","ISO4014"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), l);
	}
}

function ISO4014_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexbolt2_table_0(key)[6],"mm")],
	["key", key],
	["k", convert_to_default_unit(hexbolt2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexbolt2_table_0(key)[2],"mm")],
	["b1", convert_to_default_unit(hexbolt2_table_0(key)[3],"mm")],
	["b2", convert_to_default_unit(hexbolt2_table_0(key)[4],"mm")],
	["b3", convert_to_default_unit(hexbolt2_table_0(key)[5],"mm")],
	["d1", convert_to_default_unit(hexbolt2_table_0(key)[0],"mm")]];

module DINENISO4014(key="M3", l=20){
	check_parameter_type("DINENISO4014","key",key,"Table Index");
	check_parameter_type("DINENISO4014","l",l,"Length (mm)");

	measures_0 = hexbolt2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO4014, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","bolt"," ","DINENISO4014"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), l);
	}
}

function DINENISO4014_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexbolt2_table_0(key)[6],"mm")],
	["key", key],
	["k", convert_to_default_unit(hexbolt2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexbolt2_table_0(key)[2],"mm")],
	["b1", convert_to_default_unit(hexbolt2_table_0(key)[3],"mm")],
	["b2", convert_to_default_unit(hexbolt2_table_0(key)[4],"mm")],
	["b3", convert_to_default_unit(hexbolt2_table_0(key)[5],"mm")],
	["d1", convert_to_default_unit(hexbolt2_table_0(key)[0],"mm")]];

module DINEN24014(key="M3", l=20){
	check_parameter_type("DINEN24014","key",key,"Table Index");
	check_parameter_type("DINEN24014","l",l,"Length (mm)");

	measures_0 = hexbolt2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINEN24014, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","head"," ","bolt"," ","DINEN24014"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), l);
	}
}

function DINEN24014_dims(key="M3", l=20) = [
	["e", convert_to_default_unit(hexbolt2_table_0(key)[6],"mm")],
	["key", key],
	["k", convert_to_default_unit(hexbolt2_table_0(key)[1],"mm")],
	["l", l],
	["s", convert_to_default_unit(hexbolt2_table_0(key)[2],"mm")],
	["b1", convert_to_default_unit(hexbolt2_table_0(key)[3],"mm")],
	["b2", convert_to_default_unit(hexbolt2_table_0(key)[4],"mm")],
	["b3", convert_to_default_unit(hexbolt2_table_0(key)[5],"mm")],
	["d1", convert_to_default_unit(hexbolt2_table_0(key)[0],"mm")]];

module genericpipe(od=13, id=10, l=1000){
	check_parameter_type("genericpipe","od",od,"Length (mm)");
	check_parameter_type("genericpipe","id",id,"Length (mm)");
	check_parameter_type("genericpipe","l",l,"Length (mm)");

	if(BOLTS_MODE == "bom"){
		echo(str(" ","Pipe"," ","OD"," ",od," ","ID"," ",id," ","length"," ",l," "));
		cube();
	} else {
		pipe(id, od, l);
	}
}

function genericpipe_dims(od=13, id=10, l=1000) = [
	["od", od],
	["id", id],
	["l", l]];

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

module ISO4035(key="M3"){
	check_parameter_type("ISO4035","key",key,"Table Index");

	measures_0 = hexagonthinnut1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO4035, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","thin"," ","nut"," ","ISO4035"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO4035_dims(key="M3") = [
	["e_min", convert_to_default_unit(hexagonthinnut1_table_0(key)[3],"mm")],
	["s", convert_to_default_unit(hexagonthinnut1_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexagonthinnut1_table_0(key)[0],"mm")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonthinnut1_table_0(key)[2],"mm")]];

module DINENISO4035(key="M3"){
	check_parameter_type("DINENISO4035","key",key,"Table Index");

	measures_0 = hexagonthinnut1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO4035, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","thin"," ","nut"," ","DINENISO4035"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINENISO4035_dims(key="M3") = [
	["e_min", convert_to_default_unit(hexagonthinnut1_table_0(key)[3],"mm")],
	["s", convert_to_default_unit(hexagonthinnut1_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexagonthinnut1_table_0(key)[0],"mm")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonthinnut1_table_0(key)[2],"mm")]];

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

module ISO4032(key="M3"){
	check_parameter_type("ISO4032","key",key,"Table Index");

	measures_0 = hexagonnut1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO4032, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","nut"," ","ISO4032"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO4032_dims(key="M3") = [
	["e_min", convert_to_default_unit(hexagonnut1_table_0(key)[3],"mm")],
	["s", convert_to_default_unit(hexagonnut1_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexagonnut1_table_0(key)[0],"mm")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonnut1_table_0(key)[2],"mm")]];

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

module ASME_B18_2_2(key="3/8 in"){
	check_parameter_type("ASME B18.2.2","key",key,"Table Index");

	measures_0 = hexagonnut3_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ASME B18.2.2, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Hexagon"," ","nut"," ","ASME B18.2.2"," ","-"," ",key," "));
		cube();
	} else {
		nut1(convert_to_default_unit(measures_0[0],"in"), convert_to_default_unit(measures_0[1],"in"), convert_to_default_unit(measures_0[2],"in"));
	}
}

function ASME_B18_2_2_dims(key="3/8 in") = [
	["s", convert_to_default_unit(hexagonnut3_table_0(key)[1],"in")],
	["d1", convert_to_default_unit(hexagonnut3_table_0(key)[0],"in")],
	["key", key],
	["m_max", convert_to_default_unit(hexagonnut3_table_0(key)[2],"in")]];

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

module ISO104(key="51200"){
	check_parameter_type("ISO104","key",key,"Table Index");

	measures_0 = axialthrustbearing_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO104, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Axial"," ","thrust"," ","bearing"," ","ISO104"," ",key," "));
		cube();
	} else {
		axialthrustbearing(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO104_dims(key="51200") = [
	["D", convert_to_default_unit(axialthrustbearing_table_0(key)[1],"mm")],
	["T", convert_to_default_unit(axialthrustbearing_table_0(key)[2],"mm")],
	["key", key],
	["d", convert_to_default_unit(axialthrustbearing_table_0(key)[0],"mm")]];

module ISO7089(key="M3"){
	check_parameter_type("ISO7089","key",key,"Table Index");

	measures_0 = plainwasher1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO7089, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","ISO7089"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO7089_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasher1_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher1_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher1_table_0(key)[0],"mm")]];

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

module DINENISO7089(key="M3"){
	check_parameter_type("DINENISO7089","key",key,"Table Index");

	measures_0 = plainwasher1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO7089, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINENISO7089"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINENISO7089_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasher1_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher1_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher1_table_0(key)[0],"mm")]];

module DINEN27089(key="M3"){
	check_parameter_type("DINEN27089","key",key,"Table Index");

	measures_0 = plainwasher1_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINEN27089, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINEN27089"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINEN27089_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasher1_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher1_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher1_table_0(key)[0],"mm")]];

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

module ISO7090(key="M3"){
	check_parameter_type("ISO7090","key",key,"Table Index");

	measures_0 = plainwasherchamfered_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO7090, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","with"," ","chamfer"," ","ISO7090"," ","-"," ",key," "));
		cube();
	} else {
		washer2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO7090_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherchamfered_table_0(key)[0],"mm")]];

module DINISO7090(key="M3"){
	check_parameter_type("DINISO7090","key",key,"Table Index");

	measures_0 = plainwasherchamfered_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINISO7090, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","with"," ","chamfer"," ","DINISO7090"," ","-"," ",key," "));
		cube();
	} else {
		washer2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINISO7090_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherchamfered_table_0(key)[0],"mm")]];

module DINENISO7090(key="M3"){
	check_parameter_type("DINENISO7090","key",key,"Table Index");

	measures_0 = plainwasherchamfered_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO7090, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","with"," ","chamfer"," ","DINENISO7090"," ","-"," ",key," "));
		cube();
	} else {
		washer2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINENISO7090_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherchamfered_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherchamfered_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherchamfered_table_0(key)[0],"mm")]];

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

module DINISO7091(key="M10"){
	check_parameter_type("DINISO7091","key",key,"Table Index");

	measures_0 = plainwasher2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINISO7091, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINISO7091"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINISO7091_dims(key="M10") = [
	["s", convert_to_default_unit(plainwasher2_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher2_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher2_table_0(key)[0],"mm")]];

module DINENISO7091(key="M10"){
	check_parameter_type("DINENISO7091","key",key,"Table Index");

	measures_0 = plainwasher2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO7091, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINENISO7091"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINENISO7091_dims(key="M10") = [
	["s", convert_to_default_unit(plainwasher2_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasher2_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasher2_table_0(key)[0],"mm")]];

module ISO7091(key="M10"){
	check_parameter_type("ISO7091","key",key,"Table Index");

	measures_0 = plainwasher2_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO7091, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","ISO7091"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO7091_dims(key="M10") = [
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

module ISO7092(key="M3"){
	check_parameter_type("ISO7092","key",key,"Table Index");

	measures_0 = plainwasherforcheesehead_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO7092, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","ISO7092"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function ISO7092_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[0],"mm")]];

module DINISO7092(key="M3"){
	check_parameter_type("DINISO7092","key",key,"Table Index");

	measures_0 = plainwasherforcheesehead_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINISO7092, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINISO7092"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINISO7092_dims(key="M3") = [
	["s", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[2],"mm")],
	["d2", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[1],"mm")],
	["key", key],
	["d1", convert_to_default_unit(plainwasherforcheesehead_table_0(key)[0],"mm")]];

module DINENISO7092(key="M3"){
	check_parameter_type("DINENISO7092","key",key,"Table Index");

	measures_0 = plainwasherforcheesehead_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO7092, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","Plain"," ","washer"," ","DINENISO7092"," ","-"," ",key," "));
		cube();
	} else {
		washer1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"));
	}
}

function DINENISO7092_dims(key="M3") = [
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

module ISO10642(key="M3", l=20){
	check_parameter_type("ISO10642","key",key,"Table Index");
	check_parameter_type("ISO10642","l",l,"Length (mm)");

	measures_0 = hexsocketcountersunk_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO10642, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","countersunk"," ","head"," ","screw"," ","ISO10642"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), convert_to_default_unit(measures_0[7],"mm"), convert_to_default_unit(measures_0[9],"mm"), convert_to_default_unit(measures_0[10],"mm"), l);
	}
}

function ISO10642_dims(key="M3", l=20) = [
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

module DINISO10642(key="M3", l=20){
	check_parameter_type("DINISO10642","key",key,"Table Index");
	check_parameter_type("DINISO10642","l",l,"Length (mm)");

	measures_0 = hexsocketcountersunk_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINISO10642, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","countersunk"," ","head"," ","screw"," ","DINISO10642"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket1(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), convert_to_default_unit(measures_0[7],"mm"), convert_to_default_unit(measures_0[9],"mm"), convert_to_default_unit(measures_0[10],"mm"), l);
	}
}

function DINISO10642_dims(key="M3", l=20) = [
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

module ISO4762(key="M3", l=20){
	check_parameter_type("ISO4762","key",key,"Table Index");
	check_parameter_type("ISO4762","l",l,"Length (mm)");

	measures_0 = hexsocketheadcap_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in ISO4762, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","head"," ","cap"," ","screw"," ","ISO4762"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), l);
	}
}

function ISO4762_dims(key="M3", l=20) = [
	["b", convert_to_default_unit(hexsocketheadcap_table_0(key)[2],"mm")],
	["t_min", convert_to_default_unit(hexsocketheadcap_table_0(key)[5],"mm")],
	["k", convert_to_default_unit(hexsocketheadcap_table_0(key)[3],"mm")],
	["l", l],
	["L", convert_to_default_unit(hexsocketheadcap_table_0(key)[6],"mm")],
	["s", convert_to_default_unit(hexsocketheadcap_table_0(key)[4],"mm")],
	["key", key],
	["d2", convert_to_default_unit(hexsocketheadcap_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexsocketheadcap_table_0(key)[0],"mm")]];

module DINENISO4762(key="M3", l=20){
	check_parameter_type("DINENISO4762","key",key,"Table Index");
	check_parameter_type("DINENISO4762","l",l,"Length (mm)");

	measures_0 = hexsocketheadcap_table_0(key);
	if(measures_0 == "Error"){
		echo("TableLookUpError in DINENISO4762, table 0");
	}
	if(BOLTS_MODE == "bom"){
		echo(str(" ","hex"," ","socket"," ","head"," ","cap"," ","screw"," ","DINENISO4762"," ","-"," ",key," ",l," "));
		cube();
	} else {
		hex_socket2(convert_to_default_unit(measures_0[0],"mm"), convert_to_default_unit(measures_0[1],"mm"), convert_to_default_unit(measures_0[2],"mm"), convert_to_default_unit(measures_0[3],"mm"), convert_to_default_unit(measures_0[4],"mm"), convert_to_default_unit(measures_0[5],"mm"), convert_to_default_unit(measures_0[6],"mm"), l);
	}
}

function DINENISO4762_dims(key="M3", l=20) = [
	["b", convert_to_default_unit(hexsocketheadcap_table_0(key)[2],"mm")],
	["t_min", convert_to_default_unit(hexsocketheadcap_table_0(key)[5],"mm")],
	["k", convert_to_default_unit(hexsocketheadcap_table_0(key)[3],"mm")],
	["l", l],
	["L", convert_to_default_unit(hexsocketheadcap_table_0(key)[6],"mm")],
	["s", convert_to_default_unit(hexsocketheadcap_table_0(key)[4],"mm")],
	["key", key],
	["d2", convert_to_default_unit(hexsocketheadcap_table_0(key)[1],"mm")],
	["d1", convert_to_default_unit(hexsocketheadcap_table_0(key)[0],"mm")]];

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

