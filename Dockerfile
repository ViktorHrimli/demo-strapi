# Используйте образ node в качестве базового образа
FROM node:18

# Установите strapi глобально
RUN npm install strapi@beta -g

# Установите зависимости приложения
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install

# Скопируйте остальные файлы проекта
COPY . .

# Укажите команду для запуска Strapi в режиме разработки
CMD ["strapi", "develop"]
