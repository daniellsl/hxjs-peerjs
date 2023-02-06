package peerjs;

/**
	A peer who can initiate connections with other peers.
**/
@:jsRequire("peerjs", "Peer") extern class Peer {
	/**
		A peer can connect to other peers and listen for connections.
	**/
	@:overload(function(options:PeerOptions):Peer { })
	@:overload(function(id:String, ?options:PeerOptions):Peer { })
	function new();
	/**
		The brokering ID of this peer
	**/
	final id : String;
	final options : PeerOptions;
	final open : Bool;
	final socket : Socket;
	/**
		A hash of all connections associated with this peer, keyed by the remote peer's ID.
	**/
	final connections : Dynamic;
	/**
		true if this peer and all of its connections can no longer be used.
	**/
	final destroyed : Bool;
	/**
		false if there is an active connection to the PeerServer.
	**/
	final disconnected : Bool;
	/**
		Retrieve messages from lost message store
	**/
	function _getMessages(connectionId:String):Array<ServerMessage>;
	/**
		Connects to the remote peer specified by id and returns a data connection.
	**/
	function connect(peer:String, ?options:PeerConnectOption):DataConnection;
	/**
		Calls the remote peer specified by id and returns a media connection.
	**/
	function call(peer:String, stream:js.html.MediaStream, ?options:CallOption):MediaConnection;
	function _removeConnection(connection:ts.AnyOf2<DataConnection, MediaConnection>):Void;
	/**
		Retrieve a data/media connection for this peer.
	**/
	function getConnection(peerId:String, connectionId:String):Null<ts.AnyOf2<DataConnection, MediaConnection>>;
	/**
		Emits a typed error message.
	**/
	function emitError(type:PeerErrorType, err:ts.AnyOf2<String, js.lib.Error>):Void;
	/**
		Destroys the Peer: closes all active connections as well as the connection
		  to the server.
		Warning: The peer can no longer create or accept connections after being
		  destroyed.
	**/
	function destroy():Void;
	/**
		Disconnects the Peer's connection to the PeerServer. Does not close any
		  active connections.
		Warning: The peer can no longer create or accept connections after being
		  disconnected. It also cannot reconnect to the server.
	**/
	function disconnect():Void;
	/**
		Attempts to reconnect with the same ID.
	**/
	function reconnect():Void;
	/**
		Get a list of available peer IDs. If you're running your own server, you'll
		want to set allow_discovery: true in the PeerServer options. If you're using
		the cloud server, email team@peerjs.com to get the functionality enabled for
		your key.
	**/
	function listAllPeers(?cb:(_:Array<Dynamic>) -> Void):Void;
	/**
		Return an array listing the events for which the emitter has registered
		listeners.
	**/
	function eventNames():Array<String>;
	/**
		Return the listeners registered for a given event.
	**/
	function listeners<T>(event:T):Array<(args:haxe.extern.Rest<Any>) -> Void>;
	/**
		Return the number of listeners listening to a given event.
	**/
	function listenerCount(event:String):Float;
	/**
		Calls each of the listeners registered for a given event.
	**/
	function emit<T>(event:T, args:haxe.extern.Rest<Any>):Bool;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):Peer;
	function addListener<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):Peer;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):Peer;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):Peer;
	function off<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):Peer;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:String):Peer;
	static var prototype : Peer;
}