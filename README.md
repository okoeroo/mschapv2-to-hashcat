# mschapv2-to-hashcat
Reformatter from MSCHAPv2 format/elements to a hashcat input hash to crack, including cracking suggestions.

## Example:

```bash
./transform.sh
username:  foo
challenge: mychallengewithoutColons
response:  ResponseWithoutColons
Proposed hashcat oneliner:

Straight:
hashcat -m 5500 -a 0 foo::::ResponseWithoutColons:mychallengewithoutColons example.dict

Brute force:
hashcat -m 5500 -a 3 foo::::ResponseWithoutColons:mychallengewithoutColons
```
