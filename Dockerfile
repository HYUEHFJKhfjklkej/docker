FROM python:3.9-slim

WORKDIR /app
RUN echo "Пушкарев Никита Юревич" > name.txt
RUN echo "nikita79194106849@mail.ru" > mail.txt
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV CONTAINERENV=True

CMD ["python", "app.py"]

