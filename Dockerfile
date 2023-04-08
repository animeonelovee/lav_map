FROM python:3.10.10

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /lav_map

RUN pip install --upgrade pip

COPY ./requirements.txt .

COPY ./entrypoint.sh .

RUN chmod +x entrypoint.sh

RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT [ "/lav_map/entrypoint.sh" ]
