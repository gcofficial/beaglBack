import io from 'socket.io';
import connection from './sockets/connection';

const { SOCKET_PORT = 13665 } = process.env;
const sockets = io(SOCKET_PORT);
var tmp = sockets.on('connection', connection);
