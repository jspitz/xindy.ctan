#!/usr/bin/perl

$language = "Template";
$prefix = "??";
$script = "latin";

# preferred order of diacritics of not specified otherwise:
# go from little to big, from non-touching to touching

# caron acute grave dot-above breve circumflex tilde
# ring-above diaeresis comma-below cedilla ogonek stroke

$alphabet = [
                   [], # a (many)
                   [], # a with breve (romanian, vietnamese)
                   [], # a with circumflex (romanian, vietnamese)
                   [], # a with ogonek (polish)
                   [], # b (many)
                   [], # b with hook (hausa)
                   [], # c (many)
                   [], # ch (spanish/traditional)
                   [], # cs (hungarian)
                   [], # c with caron (many)
                   [], # c with acute (croatian, lower sorbian, polish)
                   [], # c with circumflex (esperanto)
                   [], # c with cedilla (albanian, kurdish, turkish)
                   [], # d (many)
                   [], # dh (albanian)
                   [], # dz (hungarian, gypsy/northrussian)
                   [], # dzs (hungarian)
                   [], # d+z with caron (croatian)
                   [], # d+z with acute (upper sorbian)
                   [], # d with caron (slovak/large)
                   [], # d with stroke (croatian, vietnamese)
                   [], # d with hook (hausa)
                   [], # eth (icelandic)
                   [], # e (many)
                   [], # e with caron (lower/upper sorbian)
                   [], # e with circumflex (kurdish, vietnamese)
                   [], # e with diaeresis (albanian)
                   [], # e with ogonek (polish)
                   [], # f (many)
                   [], # g (many)
                   [], # gj (albanian)
                   [], # gy (hungarian)
                   [], # g with circumflex (esperanto)
                   [], # g with breve (turkish)
                   [], # g with cedilla/comma (latvian)
                   [], # postpalatal fricative (gypsy/northrussian)
                   [], # h (many)
                   [], # h with circumflex (esperanto)
                   [], # ch (many)
                   [], # dotless i (turkish)
                   [], # i (many)
                   [], # i with inverted breve below (gypsy/northrussian)
                   [], # i with circumflex (kurdish, romanian)
                   [], # i with diaeresis (gypsy/northrussian)
                   [], # j (many)
                   [], # j with circumflex (esperanto)
                   [], # k (many)
                   [], # kh (gypsy/northrussian)
                   [], # k with cedilla/comma (latvian)
                   [], # k with hook (hausa)
                   [], # x (gypsy/northrussian)
                   [], # l with stroke (lower/upper sorbian)
                   [], # l (many)
                   [], # lj (croatian)
                   [], # ll (albanian, spanish/traditional)
                   [], # ly (hungarian)
                   [], # l with caron (slovak/large)
                   [], # l with cedilla/comma (latvian)
                   [], # l with stroke (polish)
                   [], # m (many)
                   [], # n (many)
                   [], # nj (albanian, croatian)
                   [], # ny (hungarian)
                   [], # n with caron (slovak/large)
                   [], # n with acute (lower/upper sorbian, polish)
                   [], # n with tilde (spanish/modern, spanish/traditional)
                   [], # n with cedilla/comma (latvian)
                   [], # o (many)
                   [], # o with acute (polish, upper sorbian)
                   [], # o with circumflex (vietnamese)
                   [], # o with horn (vietnamese)
                   [], # o with diaeresis (hungarian, turkish)
                   [], # p (many)
                   [], # ph (gypsy/northrussian)
                   [], # q (many)
                   [], # r (many)
                   [], # rr (albanian)
                   [], # r with caron (czech, slovak/large, upper sorbian)
                   [], # r with acute (lower sorbian)
                   [], # r with cedilla/comma (latvian)
                   [], # s (many)
                   [], # sh (albanian)
                   [], # sz (hungarian)
                   [], # s with caron (many)
                   [], # s with acute (lower sorbian, polish)
                   [], # s with circumflex (esperanto)
                   [], # s with comma below (romanian)
                   [], # s with cedilla (kurdish, turkish)
                   [], # z (estonian)
                   [], # z with caron (estonian)
                   [], # t (many)
                   [], # th (albanian, gypsy/northrussian)
                   [], # ty (hungarian)
                   [], # t with caron (slovak/large)
                   [], # t with comma below (romanian)
                   [], # c with acute (upper sorbian)
                   [], # u (many)
                   [], # u with breve (esperanto)
                   [], # u with circumflex (kurdish)
                   [], # u with horn (vietnamese)
                   [], # u with diaeresis (hungarian, turkish)
                   [], # v (many)
                   [], # w (many)
                   [], # o with tilde (estonian)
                   [], # a with diaeresis (estonian)
                   [], # o with diaeresis (estonian)
                   [], # u with diaeresis (estonian)
                   [], # x (many)
                   [], # xh (albanian)
                   [], # y (many)
                   [], # y preceded by apostrophe (hausa)
                   [], # yogh (english)
                   [], # z (many)
                   [], # zh (albanian)
                   [], # zs (hungarian)
                   [], # z with caron (many)
                   [], # z with acute (lower sorbian, polish)
                   [], # z with dot above (polish)
                   [], # thorn (icelandic)
                   [], # wynn (english)
                   [], # ligature ae (danish, icelandic, norwegian)
                   [], # o with stroke (danish, norwegian)
                   [], # a with ring above (danish, norwegian, swedish)
                   [], # a with diaeresis (finnish, swedish)
                   [], # o with diaeresis (finnish, icelandic, swedish)
                   []  # a with ring above (icelandic)
];

$sortcase = 'Aa';
#$sortcase = 'aA';

$ligatures = [
];

@special = ('?', '!', '.', 'letters', '-', '\'');

do 'make-rules.pl';
