package peerjs;

@jsInaccessible extern class ServerMessage {
	function new();
	var type : ServerMessageType;
	var payload : Dynamic;
	var src : String;
	static var prototype : ServerMessage;
}