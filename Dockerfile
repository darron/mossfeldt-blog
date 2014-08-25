FROM octohost/ruby-2.1

RUN mkdir /srv/www
ADD . /srv/www
RUN cd /srv/www; bundle install --deployment

WORKDIR /srv/www

EXPOSE 3000

CMD bundle exec padrino start --host 0.0.0.0
