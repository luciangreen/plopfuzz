# plopfuzz

fuzz-test each output character on its own. A set of per-character programs is checked against a reference for the whole output; each character is tested over inputs that vary only what it reads, so a bug is pinned to the character that has it, with the smallest input that shows it, and characters without bugs are reported clean. Reference functions: whole-output functions on lists of 0..9.

## Use

```prolog
?- use_module(prolog/plopfuzz).
?- fuzz([in(1), in(0)], swap2, 2, R).                       % R = [0-clean, 1-clean]
?- fuzz([in(1), shift(0, 1)], swap2, 2, R).                 % R = [0-clean, 1-fails([0, 0], want(0), got(1))]
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every 2-character program from a pool, against every reference, on inputs of length 2 over 0..9.

1. A reported failure is real: on that input the character differs from the reference.
2. A clean character agrees with the reference on every input.
3. Bugs stay with their character: changing one character's formula never changes another character's result.
4. The failing input is the smallest (first in order) that shows the bug.

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
