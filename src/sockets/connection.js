import saveProfile from './saveProfile';

export default function(socket) {
  console.log('Connected', socket.id);
  socket.on('saveProfile', saveProfile);
}
