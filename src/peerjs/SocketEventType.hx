package peerjs;

@:jsRequire("peerjs", "SocketEventType") @:enum extern abstract SocketEventType(String) from String to String {
	var Message;
	var Disconnected;
	var Error;
	var Close;
}