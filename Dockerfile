FROM python:3.11-slim
WORKDIR /app
COPY . /app
ADD main.py .
RUN apt-get update \
    && apt-get install -y libgl1-mesa-glx libglib2.0-0

RUN pip3 install -r requirements.txt

EXPOSE 5001
CMD python ./main.py