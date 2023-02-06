package peerjs;

@jsInaccessible extern class BaseConnection<T> {
	function new(peer:String, provider:Peer, options:Dynamic);
	final peer : String;
	var provider : Peer;
	final options : Dynamic;
	private var _open : Bool;
	final metadata : Dynamic;
	var connectionId : String;
	var peerConnection : js.html.rtc.PeerConnection;
	final type : ConnectionType;
	final open : Bool;
	function close():Void;
	function handleMessage(message:ServerMessage):Void;
	/**
		Return an array listing the events for which the emitter has registered
		listeners.
	**/
	function eventNames():Array<eventemitter3.EventNames<Dynamic>>;
	/**
		Return the listeners registered for a given event.
	**/
	function listeners<T>(event:T):Array<eventemitter3.EventListener<Dynamic, T>>;
	/**
		Return the number of listeners listening to a given event.
	**/
	function listenerCount(event:eventemitter3.EventNames<Dynamic>):Float;
	/**
		Calls each of the listeners registered for a given event.
	**/
	function emit<T>(event:T, args:haxe.extern.Rest<Any>):Bool;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:eventemitter3.EventListener<Dynamic, T>, ?context:Dynamic):BaseConnection<T>;
	function addListener<T>(event:T, fn:eventemitter3.EventListener<Dynamic, T>, ?context:Dynamic):BaseConnection<T>;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:eventemitter3.EventListener<Dynamic, T>, ?context:Dynamic):BaseConnection<T>;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:eventemitter3.EventListener<Dynamic, T>, ?context:Dynamic, ?once:Bool):BaseConnection<T>;
	function off<T>(event:T, ?fn:eventemitter3.EventListener<Dynamic, T>, ?context:Dynamic, ?once:Bool):BaseConnection<T>;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:eventemitter3.EventNames<Dynamic>):BaseConnection<T>;
	static var prototype : BaseConnection<Dynamic>;
}