# Utilisation de l'image de base Node.js
FROM node:latest

# Définition du répertoire de travail
WORKDIR /usr/src/app

# Copie des fichiers de dépendances
COPY package*.json ./
RUN npm install

# Copie des fichiers source
COPY . .

# Commande par défaut pour exécuter l'application
CMD [ "node", "index.js" ]
