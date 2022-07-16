The PIV specification provides for a mechanism to request that the card digitally sign supplied data using an internally stored private key.

This private key does not leave the physical boundary of the credential, and Public-Key Cryptography allows the public key to verify signatures, but not create them.

These properties allow a credential to be challenged, and the response to be verified using the public key.  A valid signature indicates that the challenge was provided to the card.

If the challenge is unpredictable (e.g., random), and the key is protected against compromise, then a valid signature indicates that the card was challenged after the time the challenge was generated.  A short-lived timeout (e.g. 1 second) further constrains the timeframe to challenge the card.

Predictable challenges (e.g. incrementing counter or timestamp) allow any system with PIV credential access to precompute the value of a future challenge at the same time as other operations are performed.

Some [PIV Data Objects](data_objects.md) are accessible over contactless, potentially allowing an attacker to present a [PKI-CAK](auth_methods.md) challenge to a PIV credential still in possession of the holder.  If the challenge is predictable in advance, an attacker may use a legitimate response to impersonate the credential holder by providing this response when challenged.

Compromised devices (e.g. Access Control Readers, PCs) can also send challenges to a PIV credential, using contact-only and PIN-protected keys.  Unpredictable, time-limited challenges increase protection against such attacks.