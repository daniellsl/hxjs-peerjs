package peerjs;

@:jsRequire("peerjs", "ConnectionType") @:enum extern abstract ConnectionType(String) from String to String {
	var Data;
	var Media;
}