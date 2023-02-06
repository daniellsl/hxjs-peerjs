package peerjs;

/**
	Wraps the streaming interface between two Peers.
**/
@:jsRequire("peerjs", "MediaConnection") extern class MediaConnection extends BaseConnection<MediaConnectionEvents> {
	function new(peerId:String, provider:Peer, options:Dynamic);
	final localStream : js.html.MediaStream;
	final remoteStream : js.html.MediaStream;
	function addStream(remoteStream:Dynamic):Void;
	function answer(?stream:js.html.MediaStream, ?options:AnswerOption):Void;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):MediaConnection;
	function addListener<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):MediaConnection;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):MediaConnection;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):MediaConnection;
	function off<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):MediaConnection;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:String):MediaConnection;
	static var prototype : MediaConnection;
}