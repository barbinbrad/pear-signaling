FROM node:alpine
RUN mkdir /pear-signaling
WORKDIR /pear-signaling
COPY bin ./bin
COPY package.json .
COPY src ./src
COPY config ./config
COPY app.json .
RUN npm install
EXPOSE 9779
ENTRYPOINT ["node", "bin/pear-signaling"]
CMD [ "--port", "9779", "--path", "/myapp" ]
