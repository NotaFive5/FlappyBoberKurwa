# Используем базовый образ nginx
FROM nginx:alpine

# Копируем файлы в директорию nginx
COPY . /usr/share/nginx/html

# Копируем конфиг nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Указываем рабочую директорию
WORKDIR /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Запускаем nginx
CMD ["nginx", "-g", "daemon off;"]
