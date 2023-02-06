package peerjs;

@jsInaccessible extern class Util {
	function new();
	function noop():Void;
	final CLOUD_HOST : String;
	final CLOUD_PORT : Int;
	final chunkedBrowsers : {
		var Chrome : Float;
		var chrome : Float;
	};
	final chunkedMTU : Int;
	final defaultConfig : {
		var iceServers : Array<ts.AnyOf2<{
			var urls : String;
			@:optional
			var username : Any;
			@:optional
			var credential : Any;
		}, {
			var urls : Array<String>;
			var username : String;
			var credential : String;
		}>>;
		var sdpSemantics : String;
	};
	final browser : String;
	final browserVersion : Float;
	final supports : UtilSupportsObj;
	function validateId(id:String):Bool;
	var pack : Dynamic;
	var unpack : Dynamic;
	function chunk(blob:js.html.Blob):Array<{
		var __peerData : Float;
		var n : Float;
		var total : Float;
		var data : js.html.Blob;
	}>;
	function blobToArrayBuffer(blob:js.html.Blob, cb:(arg:Null<js.lib.ArrayBuffer>) -> Void):js.html.FileReader;
	function binaryStringToArrayBuffer(binary:String):Dynamic;
	function randomToken():String;
	function isSecure():Bool;
	static var prototype : Util;
}