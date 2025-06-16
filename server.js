const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

const contacts = [];

app.use(bodyParser.json());

app.get('/', (req, res) => {
  res.send('🚀 Welcome to the Contact API Server');
});

app.post('/contact', (req, res) => {
  const { name, message } = req.body;
  if (!name || !message) {
    return res.status(400).json({ error: 'Name and message are required' });
  }
  contacts.push({ name, message });
  res.json({ success: true, contact: { name, message } });
});

app.get('/contacts', (req, res) => {
  res.json({ contacts });
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
