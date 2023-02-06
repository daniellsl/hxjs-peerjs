package peerjs;

@jsInaccessible extern class PeerOptions {
	function new();
	@:optional
	var debug : LogLevel;
	@:optional
	var host : String;
	@:optional
	var port : Float;
	@:optional
	var path : String;
	@:optional
	var key : String;
	@:optional
	var token : String;
	@:optional
	var config : Dynamic;
	@:optional
	var secure : Bool;
	@:optional
	var pingInterval : Float;
	@:optional
	var referrerPolicy : js.html.ReferrerPolicy;
	@:optional
	dynamic function logFunction(logLevel:LogLevel, rest:haxe.extern.Rest<Dynamic>):Void;
	static var prototype : PeerOptions;
}