FROM python:3.12.14-slim

WORKDIR /app

COPY requirements.txt .
COPY src/ .

RUN pip install --no-cache-dir --upgrade -r  requirements.txt

ENTRYPOINT ["python3","./src/player_blink_gui.py"]
