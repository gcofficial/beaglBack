import express from 'express';
import logger from 'morgan';

const {
  REQUEST_PORT = 13667
} = process.env;

let app = express();

app.use(logger('dev'));

app.listen(REQUEST_PORT, () => {
  const log = console.log
  log('\n')
  log(`Server listening on http://localhost:${REQUEST_PORT}/ ..`)
  log('\n')

  log(`Much fun! :)`);
  log('\n')
});

app.post('/img', (req, res) => {
  console.log('images', req);
  res.send('images');
})
