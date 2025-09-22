FROM node:20

WORKDIR /usr/src

COPY . .

EXPOSE 5000

RUN npm install

RUN npx prisma generate

RUN npm run build

CMD ["npm", "start"]