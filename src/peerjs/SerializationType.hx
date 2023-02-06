package peerjs;

@:jsRequire("peerjs", "SerializationType") @:enum extern abstract SerializationType(String) from String to String {
	var Binary;
	var BinaryUTF8;
	var JSON;
}