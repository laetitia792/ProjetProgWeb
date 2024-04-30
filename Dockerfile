# Utiliser l'image Node.js 12 comme base
FROM node:12

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le package.json et le package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier les fichiers nécessaires dans le répertoire de travail
COPY server.js .

# Exposer le port sur lequel l'application sera en écoute
EXPOSE 3000

# Définir la commande de démarrage de l'application
CMD ["node", "server.js"]

