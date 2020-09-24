package d_fischer.connection;

@:jsRequire("@d-fischer/connection", "PersistentConnection") extern class PersistentConnection<T> extends d_fischer.typed_event_emitter.EventEmitter {
	function new<T>(_type:d_fischer.shared_utils.Constructor<T>, _connectionInfo:ConnectionInfo, ?config:d_fischer.connection.lib.persistentconnection.PersistentConnectionConfig);
	private var _type : Dynamic;
	private var _connectionInfo : Dynamic;
	private final _retryLimit : Dynamic;
	@:optional
	private final _logger : Dynamic;
	private var _connecting : Dynamic;
	@:optional
	private var _retryTimerGenerator : Dynamic;
	private var _connectionRetryCount : Dynamic;
	@:optional
	private var _currentConnection : Dynamic;
	function onReceive(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple1<String>>):d_fischer.typed_event_emitter.Listener;
	function onConnect(handler:d_fischer.typed_event_emitter.EventHandler<std.Array<Any>>):d_fischer.typed_event_emitter.Listener;
	function onDisconnect(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	function onEnd(handler:d_fischer.typed_event_emitter.EventHandler<ts.Tuple2<Bool, Null<js.lib.Error>>>):d_fischer.typed_event_emitter.Listener;
	final isConnected : Bool;
	final isConnecting : Bool;
	final host : String;
	final port : Float;
	final hasSocket : Bool;
	function sendLine(line:String):Void;
	function connect():js.lib.Promise<Void>;
	function disconnect():js.lib.Promise<Void>;
	function reconnect():js.lib.Promise<Void>;
	static var prototype : PersistentConnection<Dynamic>;
	private static var _getReconnectWaitTime : Dynamic;
}