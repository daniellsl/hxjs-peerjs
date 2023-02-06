package peerjs;

@:jsRequire("peerjs", "ServerMessageType") @:enum extern abstract ServerMessageType(String) from String to String {
	var Heartbeat;
	var Candidate;
	var Offer;
	var Answer;
	var Open;
	var Error;
	var IdTaken;
	var InvalidKey;
	var Leave;
	var Expire;
}