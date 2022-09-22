#!/usr/bin/env php
<?php

namespace DefuseCompatDemo\PHP;

require $_composer_autoload_path ?? __DIR__ . '/../../vendor/autoload.php';

$decrypt = new Decrypt();

$decrypt(
    getenv('DEFUSE_ENCRYPTION_KEY'),
    STDIN,
    STDOUT
);
