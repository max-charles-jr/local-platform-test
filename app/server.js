// app/server.js
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send({
    status: "Healthy",
    environment: process.env.NODE_ENV || "local-dev",
    message: "Hello from the Waypoint + ArgoCD local pipeline!"
  });
});

app.listen(PORT, () => console.log(`App running on port ${PORT}`));
