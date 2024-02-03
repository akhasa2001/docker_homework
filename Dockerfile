FROM node:18

WORKDIR /app

COPY package.json ./

RUN npm install mysql && \
    npm install redis && \
    npm install -g nodemon

COPY . . 

EXPOSE 3000

CMD ["npm", "run", "dev"] 