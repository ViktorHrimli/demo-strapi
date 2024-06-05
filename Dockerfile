# Используйте образ node в качестве базового образа
FROM node:18

# Установите зависимости приложения
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

CMD ["npm","run", "develop"]
