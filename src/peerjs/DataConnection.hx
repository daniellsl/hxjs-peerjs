package peerjs;

/**
	Wraps a DataChannel between two Peers.
**/
@:jsRequire("peerjs", "DataConnection") extern class DataConnection extends BaseConnection<DataConnectionEvents> {
	function new(peerId:String, provider:Peer, options:Dynamic);
	final label : String;
	final serialization : SerializationType;
	final reliable : Bool;
	dynamic function stringify(data:Dynamic):String;
	dynamic function parse(data:String):Dynamic;
	final dataChannel : js.html.rtc.DataChannel;
	final bufferSize : Float;
	/**
		Called by the Negotiator when the DataChannel is ready.
	**/
	function initialize(dc:js.html.rtc.DataChannel):Void;
	/**
		Allows user to send data.
	**/
	function send(data:Dynamic, ?chunked:Bool):Void;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):DataConnection;
	function addListener<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):DataConnection;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic):DataConnection;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):DataConnection;
	function off<T>(event:T, ?fn:(args:haxe.extern.Rest<Any>) -> Void, ?context:Dynamic, ?once:Bool):DataConnection;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:String):DataConnection;
	static var prototype : DataConnection;
}