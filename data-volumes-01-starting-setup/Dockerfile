FROM node:14

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# 환경 변수나 인수 사용에는 $가 앞에 붙어야 함
ARG DEFAULT_PORT=80

ENV PORT $DEFAULT_PORT

EXPOSE $PORT

# VOLUME [ "/app/feedback" ]

CMD [ "npm", "start" ]