% 200 recorded inputs and outputs (swipl -g record -t halt io/run.pl writes this; check compares).
io(1, fuzz, [[const(1), plus(1, 0)], swap2, 2], [0-fails([0, 0], want(0), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(2, fuzz_char, [plus(1, 0), 0, double_first, 2], fails([0, 1], want(0), got(1))).
io(3, fuzz, [[plus(1, 1), const(2)], copy, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 0], want(0), got(2))]).
io(4, fuzz_char, [shift(1, 4), 0, sum_and_first, 2], fails([0, 0], want(0), got(4))).
io(5, fuzz, [[plus(0, 0), in(0)], swap2, 2], [0-fails([0, 1], want(1), got(0)), 1-clean]).
io(6, fuzz_char, [plus(1, 1), 1, double_first, 2], fails([0, 1], want(0), got(2))).
io(7, fuzz, [[plus(0, 1), in(1)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(8, fuzz_char, [plus(1, 0), 0, sum_and_first, 2], clean).
io(9, fuzz, [[shift(1, 2), in(1)], double_first, 2], [0-fails([0, 0], want(0), got(2)), 1-fails([0, 1], want(0), got(1))]).
io(10, fuzz_char, [const(6), 1, sum_and_first, 2], fails([0, 0], want(0), got(6))).
io(11, fuzz, [[shift(0, 5), const(3)], copy, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 0], want(0), got(3))]).
io(12, fuzz_char, [shift(1, 4), 1, swap2, 2], fails([0, 0], want(0), got(4))).
io(13, fuzz, [[plus(1, 1), plus(1, 0)], double_first, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 1], want(0), got(1))]).
io(14, fuzz_char, [shift(1, 5), 0, swap2, 2], fails([0, 0], want(0), got(5))).
io(15, fuzz, [[in(1), shift(0, 8)], copy, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 0], want(0), got(8))]).
io(16, fuzz_char, [in(1), 0, swap2, 2], clean).
io(17, fuzz, [[in(1), const(1)], swap2, 2], [0-clean, 1-fails([0, 0], want(0), got(1))]).
io(18, fuzz_char, [in(0), 0, copy, 2], clean).
io(19, fuzz, [[const(7), plus(0, 0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([1, 0], want(1), got(2))]).
io(20, fuzz_char, [shift(0, 8), 0, copy, 2], fails([0, 0], want(0), got(8))).
io(21, fuzz, [[in(0), plus(1, 0)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(22, fuzz_char, [plus(0, 1), 1, swap2, 2], fails([0, 1], want(0), got(1))).
io(23, fuzz, [[const(6), const(5)], swap2, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 0], want(0), got(5))]).
io(24, fuzz_char, [const(6), 0, sum_and_first, 2], fails([0, 0], want(0), got(6))).
io(25, fuzz, [[plus(1, 1), shift(0, 3)], copy, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 0], want(0), got(3))]).
io(26, fuzz_char, [plus(0, 0), 0, sum_and_first, 2], fails([0, 1], want(1), got(0))).
io(27, fuzz, [[in(0), in(1)], sum_and_first, 2], [0-fails([0, 1], want(1), got(0)), 1-fails([0, 1], want(0), got(1))]).
io(28, fuzz_char, [in(0), 1, double_first, 2], fails([1, 0], want(2), got(1))).
io(29, fuzz, [[const(6), in(1)], swap2, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 1], want(0), got(1))]).
io(30, fuzz_char, [plus(0, 0), 0, swap2, 2], fails([0, 1], want(1), got(0))).
io(31, fuzz, [[plus(0, 1), plus(1, 0)], sum_and_first, 2], [0-clean, 1-fails([0, 1], want(0), got(1))]).
io(32, fuzz_char, [in(0), 1, copy, 2], fails([0, 1], want(1), got(0))).
io(33, fuzz, [[const(1), const(8)], sum_and_first, 2], [0-fails([0, 0], want(0), got(1)), 1-fails([0, 0], want(0), got(8))]).
io(34, fuzz_char, [shift(1, 8), 0, swap2, 2], fails([0, 0], want(0), got(8))).
io(35, fuzz, [[const(7), shift(0, 1)], double_first, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([0, 0], want(0), got(1))]).
io(36, fuzz_char, [const(1), 1, copy, 2], fails([0, 0], want(0), got(1))).
io(37, fuzz, [[in(0), const(4)], sum_and_first, 2], [0-fails([0, 1], want(1), got(0)), 1-fails([0, 0], want(0), got(4))]).
io(38, fuzz_char, [shift(0, 1), 0, double_first, 2], fails([0, 0], want(0), got(1))).
io(39, fuzz, [[const(8), shift(1, 5)], copy, 2], [0-fails([0, 0], want(0), got(8)), 1-fails([0, 0], want(0), got(5))]).
io(40, fuzz_char, [plus(1, 0), 1, swap2, 2], fails([0, 1], want(0), got(1))).
io(41, fuzz, [[shift(0, 3), shift(1, 5)], copy, 2], [0-fails([0, 0], want(0), got(3)), 1-fails([0, 0], want(0), got(5))]).
io(42, fuzz_char, [shift(1, 9), 1, double_first, 2], fails([0, 0], want(0), got(9))).
io(43, fuzz, [[shift(1, 9), in(0)], copy, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 1], want(1), got(0))]).
io(44, fuzz_char, [plus(0, 1), 0, swap2, 2], fails([1, 0], want(0), got(1))).
io(45, fuzz, [[const(4), in(0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(4)), 1-clean]).
io(46, fuzz_char, [plus(0, 0), 0, sum_and_first, 2], fails([0, 1], want(1), got(0))).
io(47, fuzz, [[const(4), shift(1, 3)], double_first, 2], [0-fails([0, 0], want(0), got(4)), 1-fails([0, 0], want(0), got(3))]).
io(48, fuzz_char, [const(3), 0, double_first, 2], fails([0, 0], want(0), got(3))).
io(49, fuzz, [[plus(1, 0), const(7)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([0, 0], want(0), got(7))]).
io(50, fuzz_char, [plus(0, 0), 1, double_first, 2], clean).
io(51, fuzz, [[plus(1, 0), plus(1, 1)], sum_and_first, 2], [0-clean, 1-fails([0, 1], want(0), got(2))]).
io(52, fuzz_char, [shift(1, 9), 1, copy, 2], fails([0, 0], want(0), got(9))).
io(53, fuzz, [[in(0), const(9)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 0], want(0), got(9))]).
io(54, fuzz_char, [const(5), 0, double_first, 2], fails([0, 0], want(0), got(5))).
io(55, fuzz, [[shift(0, 9), plus(1, 0)], double_first, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 1], want(0), got(1))]).
io(56, fuzz_char, [shift(0, 9), 1, sum_and_first, 2], fails([0, 0], want(0), got(9))).
io(57, fuzz, [[const(8), in(0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(8)), 1-clean]).
io(58, fuzz_char, [const(6), 0, copy, 2], fails([0, 0], want(0), got(6))).
io(59, fuzz, [[plus(1, 0), const(1)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([0, 0], want(0), got(1))]).
io(60, fuzz_char, [in(0), 1, copy, 2], fails([0, 1], want(1), got(0))).
io(61, fuzz, [[plus(1, 1), in(1)], copy, 2], [0-fails([0, 1], want(0), got(2)), 1-clean]).
io(62, fuzz_char, [plus(1, 1), 1, swap2, 2], fails([0, 1], want(0), got(2))).
io(63, fuzz, [[in(0), in(0)], copy, 2], [0-clean, 1-fails([0, 1], want(1), got(0))]).
io(64, fuzz_char, [shift(1, 8), 1, copy, 2], fails([0, 0], want(0), got(8))).
io(65, fuzz, [[in(1), shift(1, 4)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 0], want(0), got(4))]).
io(66, fuzz_char, [shift(1, 2), 1, swap2, 2], fails([0, 0], want(0), got(2))).
io(67, fuzz, [[in(0), plus(0, 1)], sum_and_first, 2], [0-fails([0, 1], want(1), got(0)), 1-fails([0, 1], want(0), got(1))]).
io(68, fuzz_char, [plus(1, 0), 0, double_first, 2], fails([0, 1], want(0), got(1))).
io(69, fuzz, [[plus(1, 0), plus(0, 1)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(70, fuzz_char, [in(0), 0, swap2, 2], fails([0, 1], want(1), got(0))).
io(71, fuzz, [[const(5), plus(1, 0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 1], want(0), got(1))]).
io(72, fuzz_char, [plus(1, 1), 0, copy, 2], fails([0, 1], want(0), got(2))).
io(73, fuzz, [[in(0), plus(0, 0)], swap2, 2], [0-fails([0, 1], want(1), got(0)), 1-fails([1, 0], want(1), got(2))]).
io(74, fuzz_char, [const(6), 1, swap2, 2], fails([0, 0], want(0), got(6))).
io(75, fuzz, [[shift(1, 5), shift(0, 2)], swap2, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 0], want(0), got(2))]).
io(76, fuzz_char, [in(0), 0, swap2, 2], fails([0, 1], want(1), got(0))).
io(77, fuzz, [[in(0), plus(0, 1)], copy, 2], [0-clean, 1-fails([1, 0], want(0), got(1))]).
io(78, fuzz_char, [in(0), 1, double_first, 2], fails([1, 0], want(2), got(1))).
io(79, fuzz, [[const(5), plus(0, 1)], copy, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([1, 0], want(0), got(1))]).
io(80, fuzz_char, [plus(1, 1), 1, copy, 2], fails([0, 1], want(1), got(2))).
io(81, fuzz, [[shift(1, 1), plus(0, 0)], swap2, 2], [0-fails([0, 0], want(0), got(1)), 1-fails([1, 0], want(1), got(2))]).
io(82, fuzz_char, [const(9), 0, copy, 2], fails([0, 0], want(0), got(9))).
io(83, fuzz, [[shift(0, 7), plus(1, 0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([0, 1], want(0), got(1))]).
io(84, fuzz_char, [plus(1, 1), 1, sum_and_first, 2], fails([0, 1], want(0), got(2))).
io(85, fuzz, [[in(0), in(1)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(86, fuzz_char, [in(1), 0, sum_and_first, 2], fails([1, 0], want(1), got(0))).
io(87, fuzz, [[const(5), plus(1, 1)], sum_and_first, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 1], want(0), got(2))]).
io(88, fuzz_char, [const(5), 0, copy, 2], fails([0, 0], want(0), got(5))).
io(89, fuzz, [[shift(0, 5), plus(0, 0)], double_first, 2], [0-fails([0, 0], want(0), got(5)), 1-clean]).
io(90, fuzz_char, [const(1), 0, swap2, 2], fails([0, 0], want(0), got(1))).
io(91, fuzz, [[const(5), plus(0, 1)], copy, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([1, 0], want(0), got(1))]).
io(92, fuzz_char, [const(8), 0, double_first, 2], fails([0, 0], want(0), got(8))).
io(93, fuzz, [[shift(0, 9), in(1)], sum_and_first, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 1], want(0), got(1))]).
io(94, fuzz_char, [plus(1, 1), 1, swap2, 2], fails([0, 1], want(0), got(2))).
io(95, fuzz, [[shift(0, 6), plus(1, 0)], copy, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([1, 0], want(0), got(1))]).
io(96, fuzz_char, [plus(0, 0), 1, sum_and_first, 2], fails([1, 0], want(1), got(2))).
io(97, fuzz, [[in(1), plus(1, 1)], copy, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 1], want(1), got(2))]).
io(98, fuzz_char, [in(0), 0, swap2, 2], fails([0, 1], want(1), got(0))).
io(99, fuzz, [[shift(0, 1), in(1)], swap2, 2], [0-fails([0, 0], want(0), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(100, fuzz_char, [shift(0, 9), 0, sum_and_first, 2], fails([0, 0], want(0), got(9))).
io(101, fuzz, [[in(1), shift(1, 5)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 0], want(0), got(5))]).
io(102, fuzz_char, [plus(1, 0), 1, copy, 2], fails([1, 0], want(0), got(1))).
io(103, fuzz, [[const(6), in(1)], double_first, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 1], want(0), got(1))]).
io(104, fuzz_char, [plus(1, 1), 1, double_first, 2], fails([0, 1], want(0), got(2))).
io(105, fuzz, [[in(1), plus(0, 0)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-clean]).
io(106, fuzz_char, [plus(1, 0), 1, copy, 2], fails([1, 0], want(0), got(1))).
io(107, fuzz, [[shift(0, 4), shift(1, 3)], double_first, 2], [0-fails([0, 0], want(0), got(4)), 1-fails([0, 0], want(0), got(3))]).
io(108, fuzz_char, [plus(1, 1), 0, swap2, 2], fails([0, 1], want(1), got(2))).
io(109, fuzz, [[shift(1, 9), in(0)], swap2, 2], [0-fails([0, 0], want(0), got(9)), 1-clean]).
io(110, fuzz_char, [plus(1, 1), 1, copy, 2], fails([0, 1], want(1), got(2))).
io(111, fuzz, [[plus(1, 1), plus(1, 1)], double_first, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 1], want(0), got(2))]).
io(112, fuzz_char, [shift(0, 5), 1, swap2, 2], fails([0, 0], want(0), got(5))).
io(113, fuzz, [[const(6), plus(0, 1)], double_first, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 1], want(0), got(1))]).
io(114, fuzz_char, [in(0), 1, swap2, 2], clean).
io(115, fuzz, [[in(0), plus(0, 1)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(116, fuzz_char, [plus(1, 1), 0, double_first, 2], fails([0, 1], want(0), got(2))).
io(117, fuzz, [[in(0), shift(0, 3)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 0], want(0), got(3))]).
io(118, fuzz_char, [in(1), 1, swap2, 2], fails([0, 1], want(0), got(1))).
io(119, fuzz, [[plus(1, 1), shift(1, 7)], copy, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 0], want(0), got(7))]).
io(120, fuzz_char, [shift(0, 7), 1, copy, 2], fails([0, 0], want(0), got(7))).
io(121, fuzz, [[plus(1, 1), shift(0, 5)], double_first, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 0], want(0), got(5))]).
io(122, fuzz_char, [const(8), 0, double_first, 2], fails([0, 0], want(0), got(8))).
io(123, fuzz, [[shift(0, 3), in(0)], double_first, 2], [0-fails([0, 0], want(0), got(3)), 1-fails([1, 0], want(2), got(1))]).
io(124, fuzz_char, [const(5), 0, copy, 2], fails([0, 0], want(0), got(5))).
io(125, fuzz, [[in(1), in(0)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([1, 0], want(2), got(1))]).
io(126, fuzz_char, [shift(0, 6), 0, double_first, 2], fails([0, 0], want(0), got(6))).
io(127, fuzz, [[plus(0, 1), shift(0, 2)], copy, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 0], want(0), got(2))]).
io(128, fuzz_char, [const(6), 1, sum_and_first, 2], fails([0, 0], want(0), got(6))).
io(129, fuzz, [[shift(1, 7), in(0)], double_first, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([1, 0], want(2), got(1))]).
io(130, fuzz_char, [const(1), 1, swap2, 2], fails([0, 0], want(0), got(1))).
io(131, fuzz, [[plus(1, 0), plus(1, 0)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 1], want(0), got(1))]).
io(132, fuzz_char, [const(8), 1, copy, 2], fails([0, 0], want(0), got(8))).
io(133, fuzz, [[const(6), in(0)], copy, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 1], want(1), got(0))]).
io(134, fuzz_char, [shift(1, 3), 0, copy, 2], fails([0, 0], want(0), got(3))).
io(135, fuzz, [[const(5), shift(1, 2)], swap2, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 0], want(0), got(2))]).
io(136, fuzz_char, [plus(0, 0), 1, swap2, 2], fails([1, 0], want(1), got(2))).
io(137, fuzz, [[in(0), const(8)], copy, 2], [0-clean, 1-fails([0, 0], want(0), got(8))]).
io(138, fuzz_char, [in(0), 1, sum_and_first, 2], clean).
io(139, fuzz, [[shift(0, 8), plus(1, 1)], double_first, 2], [0-fails([0, 0], want(0), got(8)), 1-fails([0, 1], want(0), got(2))]).
io(140, fuzz_char, [const(2), 1, swap2, 2], fails([0, 0], want(0), got(2))).
io(141, fuzz, [[plus(0, 1), plus(0, 0)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([1, 0], want(1), got(2))]).
io(142, fuzz_char, [in(0), 1, double_first, 2], fails([1, 0], want(2), got(1))).
io(143, fuzz, [[shift(1, 7), plus(0, 1)], copy, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([1, 0], want(0), got(1))]).
io(144, fuzz_char, [in(1), 1, sum_and_first, 2], fails([0, 1], want(0), got(1))).
io(145, fuzz, [[plus(0, 0), shift(1, 2)], double_first, 2], [0-clean, 1-fails([0, 0], want(0), got(2))]).
io(146, fuzz_char, [shift(0, 8), 0, sum_and_first, 2], fails([0, 0], want(0), got(8))).
io(147, fuzz, [[plus(1, 1), shift(0, 9)], double_first, 2], [0-fails([0, 1], want(0), got(2)), 1-fails([0, 0], want(0), got(9))]).
io(148, fuzz_char, [const(6), 1, swap2, 2], fails([0, 0], want(0), got(6))).
io(149, fuzz, [[in(1), plus(1, 1)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 1], want(0), got(2))]).
io(150, fuzz_char, [shift(0, 1), 1, double_first, 2], fails([0, 0], want(0), got(1))).
io(151, fuzz, [[in(0), in(1)], swap2, 2], [0-fails([0, 1], want(1), got(0)), 1-fails([0, 1], want(0), got(1))]).
io(152, fuzz_char, [const(8), 1, swap2, 2], fails([0, 0], want(0), got(8))).
io(153, fuzz, [[in(1), in(1)], swap2, 2], [0-clean, 1-fails([0, 1], want(0), got(1))]).
io(154, fuzz_char, [in(0), 0, sum_and_first, 2], fails([0, 1], want(1), got(0))).
io(155, fuzz, [[const(5), const(5)], swap2, 2], [0-fails([0, 0], want(0), got(5)), 1-fails([0, 0], want(0), got(5))]).
io(156, fuzz_char, [plus(0, 0), 0, double_first, 2], clean).
io(157, fuzz, [[const(2), in(0)], copy, 2], [0-fails([0, 0], want(0), got(2)), 1-fails([0, 1], want(1), got(0))]).
io(158, fuzz_char, [shift(0, 9), 0, double_first, 2], fails([0, 0], want(0), got(9))).
io(159, fuzz, [[in(0), const(1)], copy, 2], [0-clean, 1-fails([0, 0], want(0), got(1))]).
io(160, fuzz_char, [in(0), 0, double_first, 2], fails([1, 0], want(2), got(1))).
io(161, fuzz, [[plus(0, 1), plus(1, 1)], swap2, 2], [0-fails([1, 0], want(0), got(1)), 1-fails([0, 1], want(0), got(2))]).
io(162, fuzz_char, [const(8), 0, swap2, 2], fails([0, 0], want(0), got(8))).
io(163, fuzz, [[plus(1, 0), in(0)], copy, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 1], want(1), got(0))]).
io(164, fuzz_char, [plus(0, 1), 0, swap2, 2], fails([1, 0], want(0), got(1))).
io(165, fuzz, [[shift(1, 9), const(4)], double_first, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 0], want(0), got(4))]).
io(166, fuzz_char, [in(0), 0, sum_and_first, 2], fails([0, 1], want(1), got(0))).
io(167, fuzz, [[in(0), plus(0, 1)], copy, 2], [0-clean, 1-fails([1, 0], want(0), got(1))]).
io(168, fuzz_char, [plus(0, 0), 0, copy, 2], fails([1, 0], want(1), got(2))).
io(169, fuzz, [[const(9), const(2)], swap2, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 0], want(0), got(2))]).
io(170, fuzz_char, [plus(1, 1), 1, swap2, 2], fails([0, 1], want(0), got(2))).
io(171, fuzz, [[in(1), const(6)], sum_and_first, 2], [0-fails([1, 0], want(1), got(0)), 1-fails([0, 0], want(0), got(6))]).
io(172, fuzz_char, [shift(0, 5), 1, swap2, 2], fails([0, 0], want(0), got(5))).
io(173, fuzz, [[const(2), in(0)], double_first, 2], [0-fails([0, 0], want(0), got(2)), 1-fails([1, 0], want(2), got(1))]).
io(174, fuzz_char, [plus(0, 1), 0, swap2, 2], fails([1, 0], want(0), got(1))).
io(175, fuzz, [[shift(1, 2), const(3)], double_first, 2], [0-fails([0, 0], want(0), got(2)), 1-fails([0, 0], want(0), got(3))]).
io(176, fuzz_char, [const(1), 1, swap2, 2], fails([0, 0], want(0), got(1))).
io(177, fuzz, [[in(0), shift(0, 1)], double_first, 2], [0-fails([1, 0], want(2), got(1)), 1-fails([0, 0], want(0), got(1))]).
io(178, fuzz_char, [const(4), 1, swap2, 2], fails([0, 0], want(0), got(4))).
io(179, fuzz, [[shift(1, 9), shift(1, 2)], swap2, 2], [0-fails([0, 0], want(0), got(9)), 1-fails([0, 0], want(0), got(2))]).
io(180, fuzz_char, [const(2), 0, copy, 2], fails([0, 0], want(0), got(2))).
io(181, fuzz, [[in(1), const(9)], swap2, 2], [0-clean, 1-fails([0, 0], want(0), got(9))]).
io(182, fuzz_char, [plus(0, 1), 0, sum_and_first, 2], clean).
io(183, fuzz, [[plus(1, 0), const(6)], double_first, 2], [0-fails([0, 1], want(0), got(1)), 1-fails([0, 0], want(0), got(6))]).
io(184, fuzz_char, [shift(0, 2), 0, swap2, 2], fails([0, 0], want(0), got(2))).
io(185, fuzz, [[shift(0, 7), plus(1, 0)], copy, 2], [0-fails([0, 0], want(0), got(7)), 1-fails([1, 0], want(0), got(1))]).
io(186, fuzz_char, [in(1), 0, sum_and_first, 2], fails([1, 0], want(1), got(0))).
io(187, fuzz, [[shift(1, 6), plus(1, 0)], copy, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([1, 0], want(0), got(1))]).
io(188, fuzz_char, [plus(1, 1), 1, copy, 2], fails([0, 1], want(1), got(2))).
io(189, fuzz, [[const(6), in(0)], sum_and_first, 2], [0-fails([0, 0], want(0), got(6)), 1-clean]).
io(190, fuzz_char, [shift(1, 5), 1, double_first, 2], fails([0, 0], want(0), got(5))).
io(191, fuzz, [[shift(0, 6), shift(0, 8)], copy, 2], [0-fails([0, 0], want(0), got(6)), 1-fails([0, 0], want(0), got(8))]).
io(192, fuzz_char, [shift(0, 5), 0, double_first, 2], fails([0, 0], want(0), got(5))).
io(193, fuzz, [[plus(0, 1), const(1)], sum_and_first, 2], [0-clean, 1-fails([0, 0], want(0), got(1))]).
io(194, fuzz_char, [plus(0, 1), 1, copy, 2], fails([1, 0], want(0), got(1))).
io(195, fuzz, [[const(4), plus(1, 0)], double_first, 2], [0-fails([0, 0], want(0), got(4)), 1-fails([0, 1], want(0), got(1))]).
io(196, fuzz_char, [in(1), 0, double_first, 2], fails([0, 1], want(0), got(1))).
io(197, fuzz, [[const(1), plus(1, 1)], copy, 2], [0-fails([0, 0], want(0), got(1)), 1-fails([0, 1], want(1), got(2))]).
io(198, fuzz_char, [const(4), 1, double_first, 2], fails([0, 0], want(0), got(4))).
io(199, fuzz, [[in(1), in(0)], sum_and_first, 2], [0-fails([1, 0], want(1), got(0)), 1-clean]).
io(200, fuzz_char, [const(7), 1, double_first, 2], fails([0, 0], want(0), got(7))).
