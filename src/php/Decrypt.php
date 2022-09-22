<?php

namespace DefuseCompatDemo\PHP;

use Defuse\Crypto\Key;
use Defuse\Crypto\Crypto;

class Decrypt
{
    public function __invoke(string $keyText, $inStream, $outStream)
    {
        $key = Key::loadFromAsciiSafeString($keyText);
        $ciphertext = stream_get_contents($inStream);
        $plaintext = Crypto::decrypt($ciphertext, $key);
        fwrite($outStream, $plaintext);
    }
}
