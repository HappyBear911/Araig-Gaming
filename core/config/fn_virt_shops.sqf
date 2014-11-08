/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Altis Markt",["water","redgull","apple","peach","rabbit","tbacon","lockpick","pickaxe","boltcutter","tankmanipulator","scalpel","fuelF","storagesmall","storagebig","sugar","drinkwater"]]};
	case "rebel": {["Rebel Market",["blastingcharge","speedbomb","lockpick","boltcutter","tankmanipulator"]]};
	case "gang": {["Gang Market", ["water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter","speedbomb"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drug Dealer",["cocainep","heroinp","marijuana","mushroomp","mash"]]};
	case "oil": {["Oil Trader",["oilp"]]};
	case "fishmarket": {["Altis Fish Market",["salema","ornate","mackerel","mullet","tuna","catshark"]]};
	case "glass": {["Altis Glass Dealer",["glass"]]};
	case "iron": {["Altis Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["diamond","diamondc"]]};
	case "salt": {["Salt Dealer",["salt_r"]]};
	case "cop": {["Cop Item Shop",["donuts","coffee","water","rabbit","apple","redgull","drugtester","fuelF","defusekit"]]};
	case "cement": {["Cement Dealer",["cement"]]};
	case "gas": {["Tankstelle",["water","redgull","apple","peach","rabbit","tbacon","fuelF"]]};
	case "copobjects": {["Barriers",["cordlessScrewdriver","spikeStrip","roadBarrier","roadBarrierSmall","roadCone","arrowSignLeft","arrowSignRight","portableLight"]]};
	case "bar": {["Pub",["rum","Schnapps"]]};
	case "organ": {["Organ Dealer",["kidney"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
};