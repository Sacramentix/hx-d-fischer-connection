package d_fischer.connection.lib.persistentconnection;

typedef PersistentConnectionConfig = {
	@:optional
	var retryLimit : Float;
	@:optional
	var logger : d_fischer.logger.lib.logger.Logger;
};