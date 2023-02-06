package peerjs;

@:jsRequire("peerjs", "PeerErrorType") @:enum extern abstract PeerErrorType(String) from String to String {
	var BrowserIncompatible;
	var Disconnected;
	var InvalidID;
	var InvalidKey;
	var Network;
	var PeerUnavailable;
	var SslUnavailable;
	var ServerError;
	var SocketError;
	var SocketClosed;
	var UnavailableID;
	var WebRTC;
}