# Utilisez l'image officielle de Node.js
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et package-lock.json dans le répertoire de travail
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste des fichiers du projet
COPY . .

# Exposer le port que l'application va utiliser
EXPOSE 3000

# Commande pour lancer l'application
CMD ["npm", "start"]
