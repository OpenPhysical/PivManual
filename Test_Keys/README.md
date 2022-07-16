# Test Keys

## Description
This directory contains four test asymmetric private keys, and
associated public keys.  They represent the four permissible algorithms
specified in SP-800-73-4, Table 6-2.

Note: Support for 1024-bit RSA was removed in SP-800-73-4, but
is present here for completeness.

## Files

| Private Key  | Public Key   |    Algorithm     | Bits | Algorithm |
|--------------|--------------|:----------------:|------|:---------:|
| rsa-1024.key | rsa-1024.pub |       RSA        | 1024 |   0x06    |
| rsa-2048.key | rsa-2048.pub |       RSA        | 2048 |   0x07    |
| ec-256.key   | ec-256.pub   | ECC: Curve P-256 | 256  |   0x11    |
| ec-384.key   | ec-384.pub   | ECC: Curve P-384 | 384  |   0x14    |

## References

[NIST SP-800-78-4](../Standards/NIST.SP.800-78-4.pdf): Cryptographic Algorithms and Key Sizes for Personal Identity Verification
[NIST SP-800-73-4](../Standards/NIST.SP.800-73-4.pdf): Interfaces for Personal Identity Verification
