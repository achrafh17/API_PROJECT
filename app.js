const express = require('express');//importer le module express
const app = express();//creer une instance de applicationexpress
const port = 3000;//port

app.get('/', (req, res) => {//route http
  res.send('ousaama mangol');
});

app.listen(port, () => {//demarer le serveur
  console.log(`App listening at http://localhost:${port}`);
});
