FROM secuof/for_eks:latest

RUN apt-get update && apt-get -y install \
    libpq-dev

WORKDIR /app
ADD    requirements.txt    /app/
RUN    pip install -r requirements.txt
