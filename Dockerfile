# Используем базовый образ с поддержкой Node.js и nginx
FROM node:16 AS build-stage

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы проекта
COPY . /app

# Устанавливаем зависимости
RUN npm install -g serve

# Устанавливаем nginx для раздачи статики
FROM nginx:alpine

# Копируем статические файлы из билда
COPY . /usr/share/nginx/html

# Настраиваем nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Указываем порт, который будет использовать контейнер
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
