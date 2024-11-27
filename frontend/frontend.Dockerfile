FROM node:18-alpine
WORKDIR /frontend
COPY package*.json .
RUN npm intall
COPY . .
CMD ["npm", "run","dev"]
