import { Key, Crypto } from 'defuse-node'
import readEntireStream from './util/read-entire-stream.js'

export default async function (keyText, inStream, outStream) {
  const key = Key.loadFromAsciiSafeString(keyText)
  const plaintext = await readEntireStream(inStream)
  const ciphertext = Crypto.encrypt(plaintext.toString(), key)
  outStream.write(ciphertext)
}
