---
permalink: /piv/example-apdus/
title: Example PIV APDUs
---

# Authentication



## Example Challenge

## PIN Authentication

### Global PIN authentication

| CLASS | INSTRUCTION   | P1            | P2                | Lc   | Data  | Le   |
|-------|---------------|---------------|-------------------|------|-------|------|
| 0x00  | VERIFY (0x20) | VERIFY (0x00) | GLOBAL PIN (0x00) | 0x08 | [PIN] | None |

```diff
# Example PIN of "1234"
> 00 20 00 00 08 [31 32 33 34 ff ff ff ff]
< 90 00
```

### Application (PIV) PIN authentication

| CLASS | INSTRUCTION   | P1            | P2                     | Lc   | Data  | Le   |
|-------|---------------|---------------|------------------------|------|-------|------|
| 0x00  | VERIFY (0x20) | VERIFY (0x00) | APPLICATION PIN (0x80) | 0x08 | [PIN] | None |

```diff
# Example PIN of "87654321"
> 00 20 00 80 08 [38 37 36 35 34 33 32 31]
< 90 00
```
## Card Administrator (9B) Authentication

### External Authentication

| CLASS | INSTRUCTION                 | P1                 | P2                   | Lc   | Data       | Le           |
|-------|-----------------------------|--------------------|----------------------|------|------------|--------------|
| 0x00  | GENERAL AUTHENTICATE (0x87) | UNSPECIFIED (0x00) | KEY REFERENCE (0x9b) | 0x04 | [TEMPLATE] | 0x00 or None |

#### Authentication Template
```diff
  7c [Authentication Template]
  02 [Template Length]
    81 [Challenge] | 82 [Response]
    00 [Empty: request for challenge]
```

```diff
# Example challenge of "01 02 03 04 05 06 07 08", and AES management key 
# of "00000000000000000000000000000000".
# Challenge encrypts to "0e 02 39 06 a1 86 9d 5f dc 89 ef f1 ab e5 37 f8".

# Get Challenge
> 00 87 00 9b 04 [7c 02 81 00] 00
< 7c 0a 81 08 [01 02 03 04 05 06 07 08] 90 00

# Send Response
> 00 87 00 9b 14 7c 12 82 10 [0e 02 39 06 a1 86 9d 5f dc 89 ef f1 ab e5 37 f8]
< 90 00
```

### Mutual Authentication

## RSA PKI Authentication

### 1024-Bit Challenge

### 2048-Bit Challenge

## ECC PKI Authentication

### 256-Bit Challenge

### 384-Bit Challenge