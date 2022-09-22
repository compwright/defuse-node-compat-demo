#!/usr/bin/env -S node --experimental-vm-modules

import process from 'process'
import decrypt from '../../src/javascript/decrypt.js'

decrypt(
  process.env.DEFUSE_ENCRYPTION_KEY,
  process.stdin,
  process.stdout
)
