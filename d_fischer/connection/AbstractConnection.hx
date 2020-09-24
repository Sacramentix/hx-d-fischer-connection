package d_fischer.connection;

@:jsRequire("@d-fischer/connection", "AbstractConnection") extern class AbstractConnection extends d_fischer.typed_event_emitter.EventEmitter {
	function new(__0:ConnectionInfo);
	private final _host : String;
	private final _port : Float;
	private final _secure : Bool;
	private final _lineBased : Dynamic;
	private var _currentLine : Dynamic;
	private var _connecting : Bool;
	private var _connected : Bool;
	private var _manualDisconnect : Bool;
	function onReceive(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple1<String>>):d_fischer.typed_event_emitter.Listener;
	function onConnect(handler:d_fischer.typed_event_emitter.EventHandler<std.Array<Any>>):d_fischer.typed_event_emitter.Listener;
	function onDisconnect(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	function onEnd(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	final isConnecting : Bool;
	final isConnected : Bool;
	final host : String;
	function sendLine(line:String):Void;
	function connect():js.lib.Promise<Void>;
	function disconnect():js.lib.Promise<Void>;
	private function receiveRaw(data:String):Void;
	private function sendRaw(line:String):Void;
	final hasSocket : Bool;
	final port : Float;
	static var prototype : AbstractConnection;
}