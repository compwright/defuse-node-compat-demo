#!/usr/bin/env -S node --experimental-vm-modules

import process from 'process'
import encrypt from '../../src/javascript/encrypt.js'

encrypt(
  process.env.DEFUSE_ENCRYPTION_KEY,
  process.stdin,
  process.stdout
)
