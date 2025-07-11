FROM alpine:3.22
RUN apk add --no-cache \
	curl \
	icu-dev \
	php83 \
	php83-bcmath \
	php83-dom \
	php83-fileinfo \
	php83-ftp \
	php83-gd \
	php83-intl \
	php83-session \
	php83-tokenizer \
	php83-xml \
	composer

ADD  https://github.com/pkp/ojs.git#stable-3_5_0 /build
WORKDIR /build/lib/pkp/
RUN composer install --no-dev

RUN ls -l /build/lib/pkp/lib/weblateLanguages
