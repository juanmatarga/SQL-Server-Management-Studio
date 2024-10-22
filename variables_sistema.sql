-- variables de sistema

print 'Version:' + @@version;

print 'Lenguaje:' + @@language;
set language english

print 'Servidor:' + @@servername;

print 'Conexiones usuario: ' + str(@@connections);

print 'Conexiones maximas: ' + str(@@max_connections);

print 'Tiempo en proces: ' + str(@@cpu_busy);

print 'Tiempo inactivo: ' + str(@@idle);

print 'Transacciones activas: ' + str(@@trancount);

print 'Ultimas filas: ' + str(@@rowcount);

print 'Ultimo fetch de un cursor: ' + str(@@fetch_Status);

print 'Error ultima operacion: ' + str(@@error);

print 'Ultimo identity: ' + str(@@identity);

print 'Primer dia de la semana: ' + str(@@datefirst);

print 'Bloqueo en milisegundos: ' + str(@@lock_timeout)