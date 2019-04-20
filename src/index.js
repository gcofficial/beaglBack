import io from 'socket.io';
import express from 'express';
import connection from './sockets/connection';

const {
  SOCKET_PORT = 13665,
  REQUEST_PORT = 13667
} = process.env;
const sockets = io(SOCKET_PORT);
var tmp = sockets.on('connection', connection);

let app = express();

app.listen(REQUEST_PORT, () => {
  const log = console.log
  log('\n')
  log(`Server listening on http://localhost:${REQUEST_PORT}/ ..`)
  log('\n')

  log(`Much fun! :) Egegej`);
  log('\n')
});

app.post('/img', (req, res) => {
  console.log('images', req);
  res.send('images');
})
