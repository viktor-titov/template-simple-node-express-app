import express from 'express';
const app = express();
const port = 3000;

app.get('/env', (req, res) => {
  const body = {
    params: process.env
  }
  res.send(body);
});

app.listen(port, () => {
  return console.log(`Express is listening at http://localhost:${port}`);
});
