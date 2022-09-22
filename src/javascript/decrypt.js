import { Key, Crypto } from 'defuse-node'
import readEntireStream from './util/read-entire-stream.js'

export default async function (keyText, inStream, outStream) {
  const key = Key.loadFromAsciiSafeString(keyText)
  const ciphertext = await readEntireStream(inStream)
  const plaintext = Crypto.decrypt(ciphertext.toString(), key)
  outStream.write(plaintext)
}
