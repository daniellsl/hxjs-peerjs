package peerjs;

@:jsRequire("peerjs", "LogLevel") @:enum extern abstract LogLevel(Int) from Int to Int {
	var Disabled;
	var Errors;
	var Warnings;
	var All;
}