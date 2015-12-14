FROM node:4.2.3

RUN npm install -g hexo-cli

EXPOSE 4000

CMD ["hexo", "server"]
