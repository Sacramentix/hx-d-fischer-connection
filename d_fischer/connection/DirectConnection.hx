package d_fischer.connection;

@:jsRequire("@d-fischer/connection", "DirectConnection") extern class DirectConnection extends AbstractConnection {
	function new();
	@:optional
	private var _socket : Dynamic;
	static var prototype : DirectConnection;
}