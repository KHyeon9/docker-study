FROM composer:latest

WORKDIR /var/www/html

# 일부 종속성이 누락되더라도 경고나 오류 없이 실행 가능
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]