FROM ruby:2.7.3-alpine
COPY dump.rb /
RUN gem install sinatra
EXPOSE 4567
CMD ["ruby", "/dump.rb"]
