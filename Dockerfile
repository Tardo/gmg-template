FROM python:3.9-buster

ENV DEBIAN_FRONTEND noninteractive
ENV FLASK_ENV production
ENV NODE_ENV production

WORKDIR /tmp
RUN python -m pip install --upgrade pip
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
RUN bash n latest
RUN npm install --global npm
RUN npm install --global postcss postcss-cli rollup

WORKDIR /usr/src/app
COPY ./data/src/requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./docker-entrypoint.sh /
ENTRYPOINT ["sh", "/docker-entrypoint.sh"]
