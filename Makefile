.EXPORT_ALL_VARIABLES:

DEFUSE_ENCRYPTION_KEY = $(shell vendor/bin/generate-defuse-key)

HELLO_PHP = "Hello, PHP!"
HELLO_JS = "Hello, Javascript!"

clean:
	rm -Rf vendor composer.lock node_modules package-lock.json

install: clean
	composer install --no-dev
	npm install --omit=dev

install-dev: clean
	composer install
	npm install

lint:
	node_modules/.bin/standard --fix src/javascript bin/javascript
	vendor/bin/phpcbf --standard=PSR12 src/php bin/php

test-key:
	@echo
	@echo Encryption key:
	@echo ---------------
	@echo ${DEFUSE_ENCRYPTION_KEY}
	@echo

test-php:
	@echo
	@echo With PHP:
	@echo ---------
	@echo ${HELLO_PHP} | bin/php/encrypt.php
	@echo
	@echo
	@echo ${HELLO_PHP} | bin/php/encrypt.php | bin/php/decrypt.php
	@echo

test-javascript:
	@echo
	@echo With Javascript:
	@echo ----------------
	@echo ${HELLO_JS} | bin/javascript/encrypt.js
	@echo
	@echo
	@echo ${HELLO_JS} | bin/javascript/encrypt.js | bin/javascript/decrypt.js
	@echo

test: test-key test-php test-javascript
	@echo
	@echo PHP-to-Javascript:
	@echo ------------------
	@echo ${HELLO_PHP} | bin/php/encrypt.php | bin/javascript/decrypt.js
	@echo
	@echo
	@echo Javascript-to-PHP:
	@echo ------------------
	@echo ${HELLO_JS} | bin/javascript/encrypt.js | bin/php/decrypt.php
	@echo
