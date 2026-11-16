% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/plopfuzz').

% Domain: every 2-character program from a pool, against every reference, on inputs of length 2 over 0..9.
formula(F) :- member(F, [in(0), in(1), shift(0, 1), plus(0, 1), plus(1, 1), const(3)]).
prog(Fs) :- length(Fs, 2), maplist(formula, Fs).
str(S) :- length(S, 2), maplist([X]>>between(0, 9, X), S).
ref(R) :- member(R, [swap2, double_first, sum_and_first, copy]).

% 1. A reported failure is real: on that input the character differs from the reference.
theorem(failures_are_real) :- forall(( prog(Fs), ref(R), fuzz(Fs, R, 2, Rep), member(K-fails(In, want(W), got(G)), Rep) ), ( reference(R, In, Out), nth0(K, Out, W), nth0(K, Fs, F), eval_char(F, In, G), W =\= G )).

% 2. A clean character agrees with the reference on every input.
theorem(clean_means_clean) :- forall(( prog(Fs), ref(R), fuzz(Fs, R, 2, Rep), member(K-clean, Rep) ), forall(str(In), ( reference(R, In, Out), nth0(K, Out, W), nth0(K, Fs, F), eval_char(F, In, W) ))).

% 3. Bugs stay with their character: changing one character's formula never changes another character's result.
theorem(results_are_per_character) :- forall(( prog([F0, F1]), ref(R), formula(G) ), ( fuzz([F0, F1], R, 2, [_, R1]), fuzz([G, F1], R, 2, [_, R2]), R1 == R2 )).

% 4. The failing input is the smallest (first in order) that shows the bug.
theorem(smallest_failing_input) :- forall(( prog(Fs), ref(R), fuzz(Fs, R, 2, Rep), member(K-fails(In, _, _), Rep), nth0(K, Fs, F) ),
    \+ ( str(J), J @< In, reference(R, J, Out), nth0(K, Out, W), eval_char(F, J, G), W =\= G )).
