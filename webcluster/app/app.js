const express = require('express')
const app = express()

app.use(express.static('public'));
app.get('/', (req, res) => res.redirect("/3.gif"));
app.listen(9090, () => console.log('app listening on port 9090'))
