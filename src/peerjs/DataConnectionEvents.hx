package peerjs;

typedef DataConnectionEvents = {
	/**
		Emitted when data is received from the remote peer.
	**/
	dynamic function data(data:Any):Void;
	/**
		Emitted when the connection is established and ready-to-use.
	**/
	dynamic function open():Void;
};