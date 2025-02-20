const express = require('express');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 3000;

// Настройка статической директории
app.use(express.static(path.join(__dirname, '.')));

// Отдача index.html при обращении к корневому URL
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

// Запуск сервера
app.listen(PORT, () => {
    console.log(`Сервер запущен на порту ${PORT}`);
});
