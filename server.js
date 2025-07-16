const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// New route with a linting issue: unused variable
app.get('/ping', (req, res) => {
  const unused = 42; // ESLint will warn about 'unused' being defined but never used
  res.send('pong');
});
module.exports=app;
