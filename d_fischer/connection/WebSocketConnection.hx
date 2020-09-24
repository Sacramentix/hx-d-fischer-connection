package d_fischer.connection;

@:jsRequire("@d-fischer/connection", "WebSocketConnection") extern class WebSocketConnection extends AbstractConnection {
	function new();
	@:optional
	private var _socket : Dynamic;
	static var prototype : WebSocketConnection;
}