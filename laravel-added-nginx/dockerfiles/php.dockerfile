FROM php:8.0-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

# 컨테이너 내부에서 작업하는 경우 오류 해결을 위한 권한 설정
# 기본 유저는 쓰기 권한이 없으므로 /var/www/html에 대한 쓰기 권한도 추가
# -R 명령어의 경우 하위 디렉토리 모든 것에 대한 권한 변경을 뜻함
RUN chown -R www-data:www-data /var/www/html