#!/usr/bin/env php
<?php

namespace DefuseCompatDemo\PHP;

require $_composer_autoload_path ?? __DIR__ . '/../../vendor/autoload.php';

$encrypt = new Encrypt();

$encrypt(
    getenv('DEFUSE_ENCRYPTION_KEY'),
    STDIN,
    STDOUT
);
