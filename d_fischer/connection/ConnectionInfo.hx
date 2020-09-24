package d_fischer.connection;

typedef ConnectionInfo = {
	var hostName : String;
	var port : Float;
	@:optional
	var secure : Bool;
	@:optional
	var lineBased : Bool;
};