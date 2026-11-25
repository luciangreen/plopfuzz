% plopfuzz: fuzz-test each output character on its own. A set of per-character programs is
% checked against a reference for the whole output; each character is tested on every input of the given
% length (a character's right value may depend on inputs its formula does not read, and that is often
% the bug), so a bug is pinned to the character that has it, with the smallest
% input that shows it, and characters without bugs are reported clean.
% Reference functions: whole-output functions on lists of 0..9.
%?- fuzz([in(1), in(0)], swap2, 2, R).                       % R = [0-clean, 1-clean]
%?- fuzz([in(1), shift(0, 1)], swap2, 2, R).                 % R = [0-clean, 1-fails([0, 0], want(0), got(1))]
:- module(plopfuzz, [eval_char/3, run/3, dep/2, reference/3, fuzz/4, fuzz_char/5]).
:- use_module(library(lists)).
:- use_module(library(apply)).

% Per-character formulas, as in plop2: in(I), shift(I, D) (+D mod 10), plus(I, J) (mod 10), const(C).
eval_char(in(I), In, C) :- nth0(I, In, C).
eval_char(shift(I, D), In, C) :- nth0(I, In, X), C is (X + D) mod 10.
eval_char(plus(I, J), In, C) :- nth0(I, In, X), nth0(J, In, Y), C is (X + Y) mod 10.
eval_char(const(C), _, C).
run(Fs, In, Out) :- maplist([F, C]>>eval_char(F, In, C), Fs, Out0), Out = Out0.
dep(in(I), [I]).
dep(shift(I, _), [I]).
dep(plus(I, J), D) :- sort([I, J], D).
dep(const(_), []).

reference(swap2, [A, B], [B, A]).
reference(double_first, [A|_], [D, D]) :- D is (2 * A) mod 10.
reference(sum_and_first, [A, B], [S, A]) :- S is (A + B) mod 10.
reference(copy, L, L).

% fuzz_char(+Formula, +K, +Ref, +N, -Result): clean, or fails(Input, want(C), got(C2)) for the smallest input.
fuzz_char(F, K, Ref, N, R) :- ( length(In, N), maplist([X]>>between(0, 9, X), In), reference(Ref, In, Want), nth0(K, Want, W), eval_char(F, In, G), W =\= G -> R = fails(In, want(W), got(G)) ; R = clean ).

% fuzz(+Formulas, +Ref, +N, -Report): K-Result for every character.
fuzz(Fs, Ref, N, Rep) :- length(Fs, L), Top is L - 1, ( L =:= 0 -> Rep = [] ; numlist(0, Top, Ks), maplist([K, F, K-R]>>fuzz_char(F, K, Ref, N, R), Ks, Fs, Rep) ).
