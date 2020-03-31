FROM phusion/passenger-ruby24:0.9.30

RUN rm -f /etc/service/nginx/down
RUN rm /etc/nginx/sites-enabled/default
ADD nginx/app.conf /etc/nginx/sites-enabled/app.conf

COPY webapp/ /home/app/webapp
RUN gem update --system
RUN bundle install --gemfile /home/app/webapp/Gemfile


RUN chown -R root:root /home/app/
RUN find /home/app/ -type d -exec chmod 755 {} \;
RUN find /home/app/ -type f -exec chmod 644 {} \;

CMD ["/sbin/my_init"]
