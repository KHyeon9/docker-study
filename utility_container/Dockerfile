FROM node:21-alpine

WORKDIR /app

# ENTRYPOINT를 사용하게 되면 docker run시 마지막에 설정한 단어가 추가되고 해당 단어를 쓰지않고 사용이 가능함
# 아래와 같이 되어있다면 ex) docker run ... init시 npm init을 입력한 것과 같은 효과
ENTRYPOINT [ "npm" ]