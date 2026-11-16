:- module(cases, [title/1, case/3]).
:- use_module('../prolog/plopfuzz').
:- use_module(engine).
title('plopfuzz').
f2_g(F) :- rnd_int(0, 1, I), rnd_int(0, 1, J), rnd_int(1, 9, D), rnd_pick([in(I), shift(I, D), plus(I, J), const(D)], F).
case(fuzz, [Fs, R, 2], fuzz) :- length(Fs, 2), maplist(f2_g, Fs), rnd_pick([swap2, double_first, sum_and_first, copy], R).
case(fuzz_char, [F, K, R, 2], fuzz_char) :- f2_g(F), rnd_int(0, 1, K), rnd_pick([swap2, double_first, sum_and_first, copy], R).
