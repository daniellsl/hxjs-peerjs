package peerjs;

/**
	An abstraction on top of WebSockets to provide fastest
	possible connection for peers.
**/
@jsInaccessible extern class Socket {
	function new(secure:Dynamic, host:String, port:Float, path:String, key:String, ?pingInterval:Float);
	function start(id:String, token:String):Void;
	/**
		Exposed send for DC & Peer.
	**/
	function send(data:Dynamic):Void;
	function close():Void;
	/**
		Return an array listing the events for which the emitter has registered
		listeners.
	**/
	function eventNames():Array<ts.AnyOf2<String, js.lib.Symbol>>;
	/**
		Return the listeners registered for a given event.
	**/
	function listeners<T>(event:T):Array<(args:haxe.extern.Rest<Dynamic>) -> Void>;
	/**
		Return the number of listeners listening to a given event.
	**/
	function listenerCount(event:ts.AnyOf2<String, js.lib.Symbol>):Float;
	/**
		Calls each of the listeners registered for a given event.
	**/
	function emit<T>(event:T, args:haxe.extern.Rest<Dynamic>):Bool;
	/**
		Add a listener for a given event.
	**/
	function on<T>(event:T, fn:(args:haxe.extern.Rest<Dynamic>) -> Void, ?context:Dynamic):Socket;
	function addListener<T>(event:T, fn:(args:haxe.extern.Rest<Dynamic>) -> Void, ?context:Dynamic):Socket;
	/**
		Add a one-time listener for a given event.
	**/
	function once<T>(event:T, fn:(args:haxe.extern.Rest<Dynamic>) -> Void, ?context:Dynamic):Socket;
	/**
		Remove the listeners of a given event.
	**/
	function removeListener<T>(event:T, ?fn:(args:haxe.extern.Rest<Dynamic>) -> Void, ?context:Dynamic, ?once:Bool):Socket;
	function off<T>(event:T, ?fn:(args:haxe.extern.Rest<Dynamic>) -> Void, ?context:Dynamic, ?once:Bool):Socket;
	/**
		Remove all listeners, or those of the specified event.
	**/
	function removeAllListeners(?event:ts.AnyOf2<String, js.lib.Symbol>):Socket;
	static var prototype : Socket;
}