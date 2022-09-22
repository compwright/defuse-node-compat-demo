<?php

namespace DefuseCompatDemo\PHP;

use Defuse\Crypto\Key;
use Defuse\Crypto\Crypto;

class Encrypt
{
    public function __invoke(string $keyText, $inStream, $outStream)
    {
        $key = Key::loadFromAsciiSafeString($keyText);
        $plaintext = stream_get_contents($inStream);
        $ciphertext = Crypto::encrypt($plaintext, $key);
        fwrite($outStream, $ciphertext);
    }
}
