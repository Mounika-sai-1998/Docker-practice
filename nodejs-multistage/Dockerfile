FROM node:19-alpine as firststage
WORKDIR /appjs
COPY package*.json .
RUN npm install


FROM firststage as final
RUN npm install --production
COPY . .
CMD ["node" , "index.js"]
