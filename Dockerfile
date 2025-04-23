FROM node:20


# Ustawiamy katalog ro
WORKDIR /app
# Kopiujemy package.json i package-lock.json
COPY src/package*.json ./
# Instalujemy zależności
RUN npm install

# Kopiujemy całą resztę kodu
COPY src/ .
# Otwieramy port na którym aplikacja nasłuchuje (standardowo 3000)
EXPOSE 3000


# Komenda startowa
CMD ["npm", "start"]

