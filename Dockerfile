# Указываем базовый образ с Node.js
FROM node:20.13.1

# Устанавливаем рабочую директорию в контейнере
WORKDIR /app

# Копируем package.json и package-lock.json в контейнер
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем весь исходный код приложения
COPY . .

# Компилируем TypeScript в JavaScript
RUN npm run build

# Указываем порт, который будет открыт в контейнере
EXPOSE 3000

# Команда для запуска приложения
CMD ["node", "dist/app.js"]

