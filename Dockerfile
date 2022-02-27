FROM tiangolo/uwsgi-nginx-flask:python3.9

ENV DEBIAN_FRONTEND noninteractive
ENV FLASK_ENV production
ENV NODE_ENV production
ENV NGINX_WORKER_PROCESSES auto
ENV NGINX_MAX_UPLOAD 1m

RUN rm -rf /app
RUN git clone https://$APP_GIT_AUTH@gitlab.com/$APP_GIT_REPO.git /app --depth=1
COPY ./$APP_CONF_FILE /app/.

WORKDIR /tmp
RUN curl -L https://raw.githubusercontent.com/tj/n/master/bin/n -o n
RUN bash n latest
RUN npm install --global postcss postcss-cli rollup

WORKDIR /app
RUN pip install -r requirements.txt
RUN npm install --production
