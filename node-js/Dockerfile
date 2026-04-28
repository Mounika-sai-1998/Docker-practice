FROM node
WORKDIR /appjs
COPY package*.json .
RUN npm install
COPY . .
CMD ["node" , "index.js"]
