const path = require('path');
const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

// Définir le répertoire pour les fichiers statiques
app.use(express.static('public'));

// Servir index.html pour la route racine '/' et '/index'
app.get(['/', '/index'], (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

// Démarrer le serveur
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});

