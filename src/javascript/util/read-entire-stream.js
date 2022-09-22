import { Buffer } from 'buffer'

export default async function readEntireStream (stream) {
  const chunks = []
  for await (const chunk of stream) chunks.push(chunk)
  return Buffer.concat(chunks)
}
