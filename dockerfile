# Utiliser une image Node officielle
FROM node:18

# Définir le dossier de travail
WORKDIR /app

# Copier les fichiers
COPY package*.json ./
RUN npm install
COPY . .

# Lancer l'application
CMD ["node", "app.js"]

