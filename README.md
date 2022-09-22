# Cross-Platform Encryption Compatibility Demo

This project demonstrates cross-platform compatibility between [defuse/php-encryption](https://github.com/defuse/php-encryption) and [compwright/defuse-node](https://github.com/compwright/defuse-node).

## Requirements

* PHP 7.4+
* Node.js 18+
* Composer 2+
* GNU Make

## Installation

Checkout this project, then run:

```
$ make install
```

## Run the demo

```
$ make test

Encryption key:
---------------
def0000038787c2ad315d7d09e9f6a3e70107e756af28e8ca7ee384cc0c587a5b50e21fccea7747ddcd85d1810243a320e5471cd2bf65b3fe889921ae8c5dc7c07789bc9


With PHP:
---------
def50200020c6c8f1d3d2fd8f8a9d510cf12a79b9c3b1474bb445d41e74bccbe219150b571d4612abe80b15f1232bd943a1b8d7c843d3ad4a40c481a68f72b845d53a4592335286e8003f2234badcaac0080c6cc14fe7b84739014c2377ea158

Hello, PHP!


With Javascript:
----------------
def50200a700bf6439d3b90f61896b073fa9b229f24a424a6c29a3e4822f39711367d51efc7b6d881bac8078a0cd571a329339ebc999256f02166ecfadc89056b0e7bd5d2c354e84441abfc9e4967732fd2f5121a28b1c39eda364e0bb97677bc7e65696283a80

Hello, Javascript!


PHP-to-Javascript:
------------------
Hello, PHP!


Javascript-to-PHP:
------------------
Hello, Javascript!

```
