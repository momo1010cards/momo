FROM node:16

WORKDIR /app

# نسخ ملفات تعريف الحزم وتثبيت الاعتماديات
COPY package.json package-lock.json ./
RUN npm install

# تثبيت Chromium يدويًا
RUN apt-get update && apt-get install -y chromium

# نسخ باقي ملفات المشروع
COPY . .

# تشغيل التطبيق
CMD ["npm", "start"]
