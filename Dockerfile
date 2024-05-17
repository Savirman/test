FROM ubuntu:latest

# Обновление списка пакетов и установка необходимых зависимостей
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Установка Flask через pip3
RUN pip3 install --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org flask

# Копирование вашего приложения в контейнер
COPY . /app
WORKDIR /app

# Определение команды запуска приложения
CMD ["python3", "app.py"]
