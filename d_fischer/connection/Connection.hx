package d_fischer.connection;

typedef Connection = {
	final isConnecting : Bool;
	final isConnected : Bool;
	final host : String;
	final port : Float;
	final hasSocket : Bool;
	function onReceive(event:d_fischer.typed_event_emitter.EventHandler<ts.Tuple1<String>>):d_fischer.typed_event_emitter.Listener;
	function onConnect(event:d_fischer.typed_event_emitter.EventHandler<std.Array<Any>>):d_fischer.typed_event_emitter.Listener;
	function onDisconnect(event:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	function onEnd(event:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	function connect():js.lib.Promise<Void>;
	function disconnect():js.lib.Promise<Void>;
	function sendLine(line:String):Void;
};