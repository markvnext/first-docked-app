FROM markvnext/aspnet

ADD ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD . /app/
WORKDIR /app
RUN kpm restore
EXPOSE 5004
