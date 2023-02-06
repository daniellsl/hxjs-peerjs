package peerjs;

typedef MediaConnectionEvents = {
	/**
		Emitted when a connection to the PeerServer is established.
	**/
	dynamic function stream(stream:js.html.MediaStream):Void;
};