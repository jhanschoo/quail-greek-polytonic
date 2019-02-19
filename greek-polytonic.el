;;; greek-polytonic.el --- Quail package for inputting polytonic Greek -*- lexical-binding: t; coding: utf-8 -*-

;; Copyright (C) 2016-2019 Johannes Choo

;; Author: Johannes Choo <jhanschoo@gmail.com>
;; Version: 1.0.5
;; Created: 11 Dec 2016
;; Package-Requires: ((emacs "24"))
;; Keywords: i18n, multilingual, input method, greek
;; URL: https://github.com/jhanschoo/greek-polytonic

;;; Commentary:

;; This package provides a method for inputting polytonic Greek, based
;; on the Mac and (to a lesser extent) Windows polytonic Greek
;; keyboards, with several additional bindings to aid classical
;; scholars (TODO).
;; cf. http://unicode.org/charts/PDF/U0370.pdf Greek and Coptic
;; and http://unicode.org/charts/PDF/U1F00.pdf Greek Extended
;;
;; Where Unicode specifies a NFC for characters in the above tables,
;; we use the normalized forms instead.
;;
;; Where a decomposed sequence of letters and combining diacritics is
;; necessary, we use the following sequence, modeling the canonical
;; Unicode decomposition of procomposed characters where available,
;; and from closest to furthest where unavailable:
;;
;; <letter>-<length>-<diaeresis>-<breathing>-<accent>-<ypogegrammeni>
;;
;;
;; For convenience, we list here all the combining diacritics that
;; this input method inputs, or that a precomposed character that this
;; input method inputs decomposes into.
;;
;; <length>:
;; U+0304 COMBINING MACRON
;; U+0306 COMBINING BREVE
;;
;; <diaeresis>:
;; U+0308 COMBINING DIAERESIS
;;
;; <breathing>:
;; U+0313 COMBINING COMMA ABOVE
;; U+0314 COMBINING REVERSED COMMA ABOVE
;; U+0308 COMBINING DIAERESIS
;;
;; <accent>:
;; U+0301 COMBINING ACUTE ACCENT
;; U+0300 COMBINING GRAVE ACCENT
;; U+0342 COMBINING GREEK PERISPOMENI
;;
;; <ypogegrammeni>:
;; U+0345 COMBINING GREEK YPOGEGRAMMENI
;;
;; Relevant known naming defects in Unicode names in the two blocks:
;; U+039B is GREEK CAPITAL LETTER LAMDA
;; where GREEK CAPITAL LETTER LAMBDA might be expected.
;; U+03BB is GREEK SMALL LETTER LAMDA
;; where GREEK SMALL LETTER LAMBDA might be expected.
;;

;;; Code:

(require 'quail)

;;;###autoload
(quail-define-package
 "greek-polytonic" "Greek" "ἑ" nil
 "A polytonic Greek layout based on Mac and Windows polytonic Greek
layouts, with several modifications, to write UTF-8 encoded polytonic
Greek characters."
 nil t t t t nil nil nil nil nil t)

;;;###autoload
(quail-define-rules

  ;; lowercase keyboard
  ("1" ?1)
  ("2" ?2)
  ("3" ?3)
  ("4" ?4)
  ("5" ?5)
  ("6" ?6)
  ("7" ?7)
  ("8" ?8)
  ("9" ?9)
  ("0" ?0)
  ("-" ?̄) ; U+0304 COMBINING MACRON
  ("=" ?=)
  ("`" ?`)
  ("q" ?\;) ; U+003B SEMICOLON
  ("w" ?ς) ; U+03C2 GREEK SMALL LETTER FINAL SIGMA
  ("e" ?ε) ; U+03B5 GREEK SMALL LETTER EPSILON
  ("r" ?ρ) ; U+03C1 GREEK SMALL LETTER RHO
  ("t" ?τ) ; U+03C4 GREEK SMALL LETTER TAU
  ("y" ?υ) ; U+03C5 GREEK SMALL LETTER UPSILON
  ("u" ?θ) ; U+03B8 GREEK SMALL LETTER THETA
  ("i" ?ι) ; U+03B9 GREEK SMALL LETTER IOTA
  ("o" ?ο) ; U+03BF GREEK SMALL LETTER OMICRON
  ("p" ?π) ; U+03C0 GREEK SMALL LETTER PI
  ("[" ?͂) ; U+0342 COMBINING GREEK PERISPOMENI
  ("]" ?̀) ; U+0300 COMBINING GRAVE ACCENT
  ("a" ?α) ; U+03B1 GREEK SMALL LETTER ALPHA
  ("s" ?σ) ; U+03C3 GREEK SMALL LETTER SIGMA
  ("d" ?δ) ; U+03B4 GREEK SMALL LETTER DELTA
  ("f" ?φ) ; U+03C6 GREEK SMALL LETTER PHI
  ("g" ?γ) ; U+03B3 GREEK SMALL LETTER GAMMA
  ("h" ?η) ; U+03B7 GREEK SMALL LETTER ETA
  ("j" ?ξ) ; U+03BE GREEK SMALL LETTER XI
  ("k" ?κ) ; U+03BA GREEK SMALL LETTER KAPPA
  ("l" ?λ) ; U+03BB GREEK SMALL LETTER LAMDA
  (";" ?́) ; U+0301 COMBINING ACUTE ACCENT
  ("'" ?̓) ; U+0313 COMBINING COMMA ABOVE
  ("\\" ?\\)
  ("z" ?ζ) ; U+03B6 GREEK SMALL LETTER ZETA
  ("x" ?χ) ; U+03C7 GREEK SMALL LETTER CHI
  ("c" ?ψ) ; U+03C8 GREEK SMALL LETTER PSI
  ("v" ?ω) ; U+03C9 GREEK SMALL LETTER OMEGA
  ("b" ?β) ; U+03B2 GREEK SMALL LETTER BETA
  ("n" ?ν) ; U+03BD GREEK SMALL LETTER NU
  ("m" ?μ) ; U+03BC GREEK SMALL LETTER MU
  ("," ?,)
  ("." ?.)
  ("/" ?/)

  ;; uppercase keyboard
  ("!" ?!)
  ("@" ?@)
  ("#" ?#)
  ("$" ?$)
  ("%" ?%)
  ("^" ?^)
  ("&" ?&)
  ("*" ?*)
  ("(" ?\()
  (")" ?\))
  ("_" ?̆) ; U+0306 COMBINING BREVE
  ("+" ?+)
  ("~" ~)
  ("Q" ?:) ; U+003A COLON
  ("W" ?·) ; U+00B7 MIDDLE DOT
  ("E" ?Ε) ; U+0395 GREEK CAPITAL LETTER EPSILON
  ("R" ?Ρ) ; U+03A1 GREEK CAPITAL LETTER RHO
  ("T" ?Τ) ; U+03A4 GREEK CAPITAL LETTER TAU
  ("Y" ?Υ) ; U+03A5 GREEK CAPITAL LETTER UPSILON
  ("U" ?Θ) ; U+0398 GREEK CAPITAL LETTER THETA
  ("I" ?Ι) ; U+0399 GREEK CAPITAL LETTER IOTA
  ("O" ?Ο) ; U+039F GREEK CAPITAL LETTER OMICRON
  ("P" ?Π) ; U+03A0 GREEK CAPITAL LETTER PI
  ("{" ?ͅ) ; U+0345 COMBINING GREEK YPOGEGRAMMENI
  ("}" ?̀) ; U+0300 COMBINING GRAVE ACCENT
  ("A" ?Α) ; U+0391 GREEK CAPITAL LETTER ALPHA
  ("S" ?Σ) ; U+03A3 GREEK CAPITAL LETTER SIGMA
  ("D" ?Δ) ; U+0394 GREEK CAPITAL LETTER DELTA
  ("F" ?Φ) ; U+03A6 GREEK CAPITAL LETTER PHI
  ("G" ?Γ) ; U+0393 GREEK CAPITAL LETTER GAMMA
  ("H" ?Η) ; U+0397 GREEK CAPITAL LETTER ETA
  ("J" ?Ξ) ; U+039E GREEK CAPITAL LETTER XI
  ("K" ?Κ) ; U+039A GREEK CAPITAL LETTER KAPPA
  ("L" ?Λ) ; U+039B GREEK CAPITAL LETTER LAMDA
  (":" ?̈) ; U+0308 COMBINING DIAERESIS
  ("\"" ?̔) ; U+0314 COMBINING REVERSED COMMA ABOVE
  ("|" ?|)
  ("Z" ?Ζ) ; U+0396 GREEK CAPITAL LETTER ZETA
  ("X" ?Χ) ; U+03A7 GREEK CAPITAL LETTER CHI
  ("C" ?Ψ) ; U+03A8 GREEK CAPITAL LETTER PSI
  ("V" ?Ω) ; U+03A9 GREEK CAPITAL LETTER OMEGA
  ("B" ?Β) ; U+0392 GREEK CAPITAL LETTER BETA
  ("N" ?Ν) ; U+039D GREEK CAPITAL LETTER NU
  ("M" ?Μ) ; U+039C GREEK CAPITAL LETTER MU
  ("<" ?<)
  (">" ?>)
  ("?" ??)

  ;; precomposed monotonic greek letters
  ("A;" ?Ά) ; U+0386 GREEK CAPITAL LETTER ALPHA WITH TONOS ≡ 0391 0301
  ("E;" ?Έ) ; U+0388 GREEK CAPITAL LETTER EPSILON WITH TONOS ≡ 0395 0301
  ("H;" ?Ή) ; U+0389 GREEK CAPITAL LETTER ETA WITH TONOS ≡ 0397 0301
  ("I;" ?Ί) ; U+038A GREEK CAPITAL LETTER IOTA WITH TONOS ≡ 0399 0301
  ("O;" ?Ό) ; U+038C GREEK CAPITAL LETTER OMICRON WITH TONOS ≡ 039F 0301
  ("Y;" ?Ύ) ; U+038E GREEK CAPITAL LETTER UPSILON WITH TONOS ≡ 03A5 0301
  ("V;" ?Ώ) ; U+038F GREEK CAPITAL LETTER OMEGA WITH TONOS ≡ 03A9 0301
  ("i:;" ?ΐ) ; U+0390 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND TONOS ≡ 03B9 0308 0301
  ("I:" ?Ϊ) ; U+03AA GREEK CAPITAL LETTER IOTA WITH DIALYTIKA ≡ 0399 0308
  ("Y:" ?Ϋ) ; U+03AB GREEK CAPITAL LETTER UPSILON WITH DIALYTIKA ≡ 03A5 0308
  ("a;" ?ά) ; U+03AC GREEK SMALL LETTER ALPHA WITH TONOS ≡ 03B1 0301
  ("e;" ?έ) ; U+03AD GREEK SMALL LETTER EPSILON WITH TONOS ≡ 03B5 0301
  ("h;" ?ή) ; U+03AE GREEK SMALL LETTER ETA WITH TONOS ≡ 03B7 0301
  ("i;" ?ί) ; U+03AF GREEK SMALL LETTER IOTA WITH TONOS ≡ 03B9 0301
  ("y:;" ?ΰ) ; U+03B0 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND TONOS ≡ 03CB 0301
  ("i:" ?ϊ) ; U+03CA GREEK SMALL LETTER IOTA WITH DIALYTIKA ≡ 03B9 0308
  ("y:" ?ϋ) ; U+03CB GREEK SMALL LETTER UPSILON WITH DIALYTIKA ≡ 03C5 0308
  ("o;" ?ό) ; U+03CC GREEK SMALL LETTER OMICRON WITH TONOS ≡ 03BF 0301
  ("y;" ?ύ) ; U+03CD GREEK SMALL LETTER UPSILON WITH TONOS ≡ 03C5 0301
  ("v;" ?ώ) ; U+03CE GREEK SMALL LETTER OMEGA WITH TONOS ≡ 03C9 0301

  ;; precomposed polytonic greek letters
  ("a'" ?ἀ) ; U+1F00 GREEK SMALL LETTER ALPHA WITH PSILI ≡
  ("a\"" ?ἁ) ; U+1F01 GREEK SMALL LETTER ALPHA WITH DASIA ≡
  ("a']" ?ἂ) ; U+1F02 GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA ≡
  ("a\"]" ?ἃ) ; U+1F03 GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA ≡
  ("a';" ?ἄ) ; U+1F04 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA ≡
  ("a\";" ?ἅ) ; U+1F05 GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA ≡
  ("a'[" ?ἆ) ; U+1F06 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI ≡
  ("a\"[" ?ἇ) ; U+1F07 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI ≡
  ("A'" ?Ἀ) ; U+1F08 GREEK CAPITAL LETTER ALPHA WITH PSILI ≡
  ("A\"" ?Ἁ) ; U+1F09 GREEK CAPITAL LETTER ALPHA WITH DASIA ≡
  ("A']" ?Ἂ) ; U+1F0A GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA ≡
  ("A\"]" ?Ἃ) ; U+1F0B GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA ≡
  ("A';" ?Ἄ) ; U+1F0C GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA ≡
  ("A\";" ?Ἅ) ; U+1F0D GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA ≡
  ("A'[" ?Ἆ) ; U+1F0E GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI ≡
  ("A\"[" ?Ἇ) ; U+1F0F GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI ≡
  ("e'" ?ἐ) ; U+1F10 GREEK SMALL LETTER EPSILON WITH PSILI ≡
  ("e\"" ?ἑ) ; U+1F11 GREEK SMALL LETTER EPSILON WITH DASIA ≡
  ("e']" ?ἒ) ; U+1F12 GREEK SMALL LETTER EPSILON WITH PSILI AND VARIA ≡
  ("e\"]" ?ἓ) ; U+1F13 GREEK SMALL LETTER EPSILON WITH DASIA AND VARIA ≡
  ("e';" ?ἔ) ; U+1F14 GREEK SMALL LETTER EPSILON WITH PSILI AND OXIA ≡
  ("e\";" ?ἕ) ; U+1F15 GREEK SMALL LETTER EPSILON WITH DASIA AND OXIA ≡
  ("E'" ?Ἐ) ; U+1F18 GREEK CAPITAL LETTER EPSILON WITH PSILI ≡
  ("E\"" ?Ἑ) ; U+1F19 GREEK CAPITAL LETTER EPSILON WITH DASIA ≡
  ("E']" ?Ἒ) ; U+1F1A GREEK CAPITAL LETTER EPSILON WITH PSILI AND VARIA ≡
  ("E\"]" ?Ἓ) ; U+1F1B GREEK CAPITAL LETTER EPSILON WITH DASIA AND VARIA ≡
  ("E';" ?Ἔ) ; U+1F1C GREEK CAPITAL LETTER EPSILON WITH PSILI AND OXIA ≡
  ("E\";" ?Ἕ) ; U+1F1D GREEK CAPITAL LETTER EPSILON WITH DASIA AND OXIA ≡
  ("h'" ?ἠ) ; U+1F20 GREEK SMALL LETTER ETA WITH PSILI ≡
  ("h\"" ?ἡ) ; U+1F21 GREEK SMALL LETTER ETA WITH DASIA ≡
  ("h']" ?ἢ) ; U+1F22 GREEK SMALL LETTER ETA WITH PSILI AND VARIA ≡
  ("h\"]" ?ἣ) ; U+1F23 GREEK SMALL LETTER ETA WITH DASIA AND VARIA ≡
  ("h';" ?ἤ) ; U+1F24 GREEK SMALL LETTER ETA WITH PSILI AND OXIA ≡
  ("h\";" ?ἥ) ; U+1F25 GREEK SMALL LETTER ETA WITH DASIA AND OXIA ≡
  ("h'[" ?ἦ) ; U+1F26 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI ≡
  ("h\"[" ?ἧ) ; U+1F27 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI ≡
  ("H'" ?Ἠ) ; U+1F28 GREEK CAPITAL LETTER ETA WITH PSILI ≡
  ("H\"" ?Ἡ) ; U+1F29 GREEK CAPITAL LETTER ETA WITH DASIA ≡
  ("H']" ?Ἢ) ; U+1F2A GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA ≡
  ("H\"]" ?Ἣ) ; U+1F2B GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA ≡
  ("H';" ?Ἤ) ; U+1F2C GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA ≡
  ("H\";" ?Ἥ) ; U+1F2D GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA ≡
  ("H'[" ?Ἦ) ; U+1F2E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI ≡
  ("H\"[" ?Ἧ) ; U+1F2F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI ≡
  ("i'" ?ἰ) ; U+1F30 GREEK SMALL LETTER IOTA WITH PSILI ≡
  ("i\"" ?ἱ) ; U+1F31 GREEK SMALL LETTER IOTA WITH DASIA ≡
  ("i']" ?ἲ) ; U+1F32 GREEK SMALL LETTER IOTA WITH PSILI AND VARIA ≡
  ("i\"]" ?ἳ) ; U+1F33 GREEK SMALL LETTER IOTA WITH DASIA AND VARIA ≡
  ("i';" ?ἴ) ; U+1F34 GREEK SMALL LETTER IOTA WITH PSILI AND OXIA ≡
  ("i\";" ?ἵ) ; U+1F35 GREEK SMALL LETTER IOTA WITH DASIA AND OXIA ≡
  ("i'[" ?ἶ) ; U+1F36 GREEK SMALL LETTER IOTA WITH PSILI AND PERISPOMENI ≡
  ("i\"[" ?ἷ) ; U+1F37 GREEK SMALL LETTER IOTA WITH DASIA AND PERISPOMENI ≡
  ("I'" ?Ἰ) ; U+1F38 GREEK CAPITAL LETTER IOTA WITH PSILI ≡
  ("I\"" ?Ἱ) ; U+1F39 GREEK CAPITAL LETTER IOTA WITH DASIA ≡
  ("I']" ?Ἲ) ; U+1F3A GREEK CAPITAL LETTER IOTA WITH PSILI AND VARIA ≡
  ("I\"]" ?Ἳ) ; U+1F3B GREEK CAPITAL LETTER IOTA WITH DASIA AND VARIA ≡
  ("I';" ?Ἴ) ; U+1F3C GREEK CAPITAL LETTER IOTA WITH PSILI AND OXIA ≡
  ("I\";" ?Ἵ) ; U+1F3D GREEK CAPITAL LETTER IOTA WITH DASIA AND OXIA ≡
  ("I'[" ?Ἶ) ; U+1F3E GREEK CAPITAL LETTER IOTA WITH PSILI AND PERISPOMENI ≡
  ("I\"[" ?Ἷ) ; U+1F3F GREEK CAPITAL LETTER IOTA WITH DASIA AND PERISPOMENI ≡
  ("o'" ?ὀ) ; U+1F40 GREEK SMALL LETTER OMICRON WITH PSILI ≡
  ("o\"" ?ὁ) ; U+1F41 GREEK SMALL LETTER OMICRON WITH DASIA ≡
  ("o']" ?ὂ) ; U+1F42 GREEK SMALL LETTER OMICRON WITH PSILI AND VARIA ≡
  ("o\"]" ?ὃ) ; U+1F43 GREEK SMALL LETTER OMICRON WITH DASIA AND VARIA ≡
  ("o';" ?ὄ) ; U+1F44 GREEK SMALL LETTER OMICRON WITH PSILI AND OXIA ≡
  ("o\";" ?ὅ) ; U+1F45 GREEK SMALL LETTER OMICRON WITH DASIA AND OXIA ≡
  ("O'" ?Ὀ) ; U+1F48 GREEK CAPITAL LETTER OMICRON WITH PSILI ≡
  ("O\"" ?Ὁ) ; U+1F49 GREEK CAPITAL LETTER OMICRON WITH DASIA ≡
  ("O']" ?Ὂ) ; U+1F4A GREEK CAPITAL LETTER OMICRON WITH PSILI AND VARIA ≡
  ("O\"]" ?Ὃ) ; U+1F4B GREEK CAPITAL LETTER OMICRON WITH DASIA AND VARIA ≡
  ("O';" ?Ὄ) ; U+1F4C GREEK CAPITAL LETTER OMICRON WITH PSILI AND OXIA ≡
  ("O\";" ?Ὅ) ; U+1F4D GREEK CAPITAL LETTER OMICRON WITH DASIA AND OXIA ≡
  ("y'" ?ὐ) ; U+1F50 GREEK SMALL LETTER UPSILON WITH PSILI ≡
  ("y\"" ?ὑ) ; U+1F51 GREEK SMALL LETTER UPSILON WITH DASIA ≡
  ("y']" ?ὒ) ; U+1F52 GREEK SMALL LETTER UPSILON WITH PSILI AND VARIA ≡
  ("y\"]" ?ὓ) ; U+1F53 GREEK SMALL LETTER UPSILON WITH DASIA AND VARIA ≡
  ("y';" ?ὔ) ; U+1F54 GREEK SMALL LETTER UPSILON WITH PSILI AND OXIA ≡
  ("y\";" ?ὕ) ; U+1F55 GREEK SMALL LETTER UPSILON WITH DASIA AND OXIA ≡
  ("y'[" ?ὖ) ; U+1F56 GREEK SMALL LETTER UPSILON WITH PSILI AND PERISPOMENI ≡
  ("y\"[" ?ὗ) ; U+1F57 GREEK SMALL LETTER UPSILON WITH DASIA AND PERISPOMENI ≡
  ("Y\"" ?Ὑ) ; U+1F59 GREEK CAPITAL LETTER UPSILON WITH DASIA ≡
  ("Y\"]" ?Ὓ) ; U+1F5B GREEK CAPITAL LETTER UPSILON WITH DASIA AND VARIA ≡
  ("Y\";" ?Ὕ) ; U+1F5D GREEK CAPITAL LETTER UPSILON WITH DASIA AND OXIA ≡
  ("Y\"[" ?Ὗ) ; U+1F5F GREEK CAPITAL LETTER UPSILON WITH DASIA AND PERISPOMENI ≡
  ("v'" ?ὠ) ; U+1F60 GREEK SMALL LETTER OMEGA WITH PSILI ≡
  ("v\"" ?ὡ) ; U+1F61 GREEK SMALL LETTER OMEGA WITH DASIA ≡
  ("v']" ?ὢ) ; U+1F62 GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA ≡
  ("v\"]" ?ὣ) ; U+1F63 GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA ≡
  ("v';" ?ὤ) ; U+1F64 GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA ≡
  ("v\";" ?ὥ) ; U+1F65 GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA ≡
  ("v'[" ?ὦ) ; U+1F66 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI ≡
  ("v\"[" ?ὧ) ; U+1F67 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI ≡
  ("V'" ?Ὠ) ; U+1F68 GREEK CAPITAL LETTER OMEGA WITH PSILI ≡
  ("V\"" ?Ὡ) ; U+1F69 GREEK CAPITAL LETTER OMEGA WITH DASIA ≡
  ("V']" ?Ὢ) ; U+1F6A GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA ≡
  ("V\"]" ?Ὣ) ; U+1F6B GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA ≡
  ("V';" ?Ὤ) ; U+1F6C GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA ≡
  ("V\";" ?Ὥ) ; U+1F6D GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA ≡
  ("V'[" ?Ὦ) ; U+1F6E GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI ≡
  ("V\"[" ?Ὧ) ; U+1F6F GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI ≡
  ("a]" ?ὰ) ; U+1F70 GREEK SMALL LETTER ALPHA WITH VARIA ≡
  ;;("a;" ?ά) ; U+1F71 GREEK SMALL LETTER ALPHA WITH OXIA ≡
  ("e]" ?ὲ) ; U+1F72 GREEK SMALL LETTER EPSILON WITH VARIA ≡
  ;;("e;" ?έ) ; U+1F73 GREEK SMALL LETTER EPSILON WITH OXIA ≡
  ("h]" ?ὴ) ; U+1F74 GREEK SMALL LETTER ETA WITH VARIA ≡
  ;;("h;" ?ὴ) ; U+1F75 GREEK SMALL LETTER ETA WITH OXIA ≡
  ("i]" ?ὶ) ; U+1F76 GREEK SMALL LETTER IOTA WITH VARIA ≡
  ;;("i;" ?ί) ; U+1F77 GREEK SMALL LETTER IOTA WITH OXIA ≡
  ("o]" ?ὸ) ; U+1F78 GREEK SMALL LETTER OMICRON WITH VARIA ≡
  ;;("o;" ?ό) ; U+1F79 GREEK SMALL LETTER OMICRON WITH OXIA ≡
  ("y]" ?ὺ) ; U+1F7A GREEK SMALL LETTER UPSILON WITH VARIA ≡
  ;;("y;" ?ύ) ; U+1F7B GREEK SMALL LETTER UPSILON WITH OXIA ≡
  ("v]" ?ὼ) ; U+1F7C GREEK SMALL LETTER OMEGA WITH VARIA ≡
  ;;("v;" ?ώ) ; U+1F7D GREEK SMALL LETTER OMEGA WITH OXIA ≡
  ("a'{" ?ᾀ) ; U+1F80 GREEK SMALL LETTER ALPHA WITH PSILI AND YPOGEGRAMMENI ≡
  ("a\"{" ?ᾁ) ; U+1F81 GREEK SMALL LETTER ALPHA WITH DASIA AND YPOGEGRAMMENI ≡
  ("a']{" ?ᾂ) ; U+1F82 GREEK SMALL LETTER ALPHA WITH PSILI AND VARIA AND YPOGEGRAMMENI ≡
  ("a\"]{" ?ᾃ) ; U+1F83 GREEK SMALL LETTER ALPHA WITH DASIA AND VARIA AND YPOGEGRAMMENI ≡
  ("a';{" ?ᾄ) ; U+1F84 GREEK SMALL LETTER ALPHA WITH PSILI AND OXIA AND YPOGEGRAMMENI ≡
  ("a\";{" ?ᾅ) ; U+1F85 GREEK SMALL LETTER ALPHA WITH DASIA AND OXIA AND YPOGEGRAMMENI ≡
  ("a'[{" ?ᾆ) ; U+1F86 GREEK SMALL LETTER ALPHA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("a\"[{" ?ᾇ) ; U+1F87 GREEK SMALL LETTER ALPHA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("A'{" ?ᾈ) ; U+1F88 GREEK CAPITAL LETTER ALPHA WITH PSILI AND PROSGEGRAMMENI ≡
  ("A\"{" ?ᾉ) ; U+1F89 GREEK CAPITAL LETTER ALPHA WITH DASIA AND PROSGEGRAMMENI ≡
  ("A']{" ?ᾊ) ; U+1F8A GREEK CAPITAL LETTER ALPHA WITH PSILI AND VARIA AND PROSGEGRAMMENI ≡
  ("A\"]{" ?ᾋ) ; U+1F8B GREEK CAPITAL LETTER ALPHA WITH DASIA AND VARIA AND PROSGEGRAMMENI ≡
  ("A';{" ?ᾌ) ; U+1F8C GREEK CAPITAL LETTER ALPHA WITH PSILI AND OXIA AND PROSGEGRAMMENI ≡
  ("A\";{" ?ᾍ) ; U+1F8D GREEK CAPITAL LETTER ALPHA WITH DASIA AND OXIA AND PROSGEGRAMMENI ≡
  ("A'[{" ?ᾎ) ; U+1F8E GREEK CAPITAL LETTER ALPHA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("A\"[{" ?ᾏ) ; U+1F8F GREEK CAPITAL LETTER ALPHA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("h'{" ?ᾐ) ; U+1F90 GREEK SMALL LETTER ETA WITH PSILI AND YPOGEGRAMMENI ≡
  ("h\"{" ?ᾑ) ; U+1F91 GREEK SMALL LETTER ETA WITH DASIA AND YPOGEGRAMMENI ≡
  ("h']{" ?ᾒ) ; U+1F92 GREEK SMALL LETTER ETA WITH PSILI AND VARIA AND YPOGEGRAMMENI ≡
  ("h\"]{" ?ᾒ) ; U+1F93 GREEK SMALL LETTER ETA WITH DASIA AND VARIA AND YPOGEGRAMMENI ≡
  ("h';{" ?ᾔ) ; U+1F94 GREEK SMALL LETTER ETA WITH PSILI AND OXIA AND YPOGEGRAMMENI ≡
  ("h\";{" ?ᾕ) ; U+1F95 GREEK SMALL LETTER ETA WITH DASIA AND OXIA AND YPOGEGRAMMENI ≡
  ("h'[{" ?ᾖ) ; U+1F96 GREEK SMALL LETTER ETA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("h\"[{" ?ᾗ) ; U+1F97 GREEK SMALL LETTER ETA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("H'{" ?ᾘ) ; U+1F98 GREEK CAPITAL LETTER ETA WITH PSILI AND PROSGEGRAMMENI ≡
  ("H\"{" ?ᾙ) ; U+1F99 GREEK CAPITAL LETTER ETA WITH DASIA AND PROSGEGRAMMENI ≡
  ("H']{" ?ᾚ) ; U+1F9A GREEK CAPITAL LETTER ETA WITH PSILI AND VARIA AND PROSGEGRAMMENI ≡
  ("H\"]{" ?ᾛ) ; U+1F9B GREEK CAPITAL LETTER ETA WITH DASIA AND VARIA AND PROSGEGRAMMENI ≡
  ("H';{" ?ᾜ) ; U+1F9C GREEK CAPITAL LETTER ETA WITH PSILI AND OXIA AND PROSGEGRAMMENI ≡
  ("H\";{" ?ᾝ) ; U+1F9D GREEK CAPITAL LETTER ETA WITH DASIA AND OXIA AND PROSGEGRAMMENI ≡
  ("H'[{" ?ᾞ) ; U+1F9E GREEK CAPITAL LETTER ETA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("H\"[{" ?ᾟ) ; U+1F9F GREEK CAPITAL LETTER ETA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("v'{" ?ᾠ) ; U+1FA0 GREEK SMALL LETTER OMEGA WITH PSILI AND YPOGEGRAMMENI ≡
  ("v\"{" ?ᾡ) ; U+1FA1 GREEK SMALL LETTER OMEGA WITH DASIA AND YPOGEGRAMMENI ≡
  ("v']{" ?ᾢ) ; U+1FA2 GREEK SMALL LETTER OMEGA WITH PSILI AND VARIA AND YPOGEGRAMMENI ≡
  ("v\"]{" ?ᾣ) ; U+1FA3 GREEK SMALL LETTER OMEGA WITH DASIA AND VARIA AND YPOGEGRAMMENI ≡
  ("v';{" ?ᾤ) ; U+1FA4 GREEK SMALL LETTER OMEGA WITH PSILI AND OXIA AND YPOGEGRAMMENI ≡
  ("v\";{" ?ᾥ) ; U+1FA5 GREEK SMALL LETTER OMEGA WITH DASIA AND OXIA AND YPOGEGRAMMENI ≡
  ("v'[{" ?ᾦ) ; U+1FA6 GREEK SMALL LETTER OMEGA WITH PSILI AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("v\"[{" ?ᾧ) ; U+1FA7 GREEK SMALL LETTER OMEGA WITH DASIA AND PERISPOMENI AND YPOGEGRAMMENI ≡
  ("V'{" ?ᾨ) ; U+1FA8 GREEK CAPITAL LETTER OMEGA WITH PSILI AND PROSGEGRAMMENI ≡
  ("V\"{" ?ᾩ) ; U+1FA9 GREEK CAPITAL LETTER OMEGA WITH DASIA AND PROSGEGRAMMENI ≡
  ("V']{" ?ᾪ) ; U+1FAA GREEK CAPITAL LETTER OMEGA WITH PSILI AND VARIA AND PROSGEGRAMMENI ≡
  ("V\"]{" ?ᾫ) ; U+1FAB GREEK CAPITAL LETTER OMEGA WITH DASIA AND VARIA AND PROSGEGRAMMENI ≡
  ("V';{" ?ᾬ) ; U+1FAC GREEK CAPITAL LETTER OMEGA WITH PSILI AND OXIA AND PROSGEGRAMMENI ≡
  ("V\";{" ?ᾭ) ; U+1FAD GREEK CAPITAL LETTER OMEGA WITH DASIA AND OXIA AND PROSGEGRAMMENI ≡
  ("V'[{" ?ᾮ) ; U+1FAE GREEK CAPITAL LETTER OMEGA WITH PSILI AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("V\"[{" ?ᾯ) ; U+1FAF GREEK CAPITAL LETTER OMEGA WITH DASIA AND PERISPOMENI AND PROSGEGRAMMENI ≡
  ("a_" ?ᾰ) ; U+1FB0 GREEK SMALL LETTER ALPHA WITH VRACHY ≡
  ("a-" ?ᾱ) ; U+1FB1 GREEK SMALL LETTER ALPHA WITH MACRON ≡
  ("a]{" ?ᾲ) ; U+1FB2 GREEK SMALL LETTER ALPHA WITH VARIA AND YPOGEGRAMMENI ≡
  ("a{" ?ᾳ) ; U+1FB3 GREEK SMALL LETTER ALPHA WITH YPOGEGRAMMENI ≡
  ("a;{" ?ᾴ) ; U+1FB4 GREEK SMALL LETTER ALPHA WITH OXIA AND YPOGEGRAMMENI ≡
  ("a[" ?ᾶ) ; U+1FB6 GREEK SMALL LETTER ALPHA WITH PERISPOMENI ≡
  ("a[{" ?ᾷ) ; U+1FB7 GREEK SMALL LETTER ALPHA WITH PERISPOMENI AND YPOGEGRAMMENI ≡
  ("A_" ?Ᾰ) ; U+1FB8 GREEK CAPITAL LETTER ALPHA WITH VRACHY ≡
  ("A-" ?Ᾱ) ; U+1FB9 GREEK CAPITAL LETTER ALPHA WITH MACRON ≡
  ("A]" ?Ὰ) ; U+1FBA GREEK CAPITAL LETTER ALPHA WITH VARIA ≡
  ;;("A;" ?Ά) ; U+1FBB GREEK CAPITAL LETTER ALPHA WITH OXIA ≡
  ("A{" ?ᾼ) ; U+1FBC GREEK CAPITAL LETTER ALPHA WITH PROSGEGRAMMENI ≡
  ("h]{" ?ῂ) ; U+1FC2 GREEK SMALL LETTER ETA WITH VARIA AND YPOGEGRAMMENI ≡
  ("h{" ?ῃ) ; U+1FC3 GREEK SMALL LETTER ETA WITH YPOGEGRAMMENI ≡
  ("h;{" ?ῄ) ; U+1FC4 GREEK SMALL LETTER ETA WITH OXIA AND YPOGEGRAMMENI ≡
  ("h[" ?ῆ) ; U+1FC6 GREEK SMALL LETTER ETA WITH PERISPOMENI ≡
  ("h[{" ?ῇ) ; U+1FC7 GREEK SMALL LETTER ETA WITH PERISPOMENI AND YPOGEGRAMMENI ≡
  ("E]" ?Ὲ) ; U+1FC8 GREEK CAPITAL LETTER EPSILON WITH VARIA ≡
  ;;("E;" ?Έ) ; U+1FC9 GREEK CAPITAL LETTER EPSILON WITH OXIA ≡
  ("H]" ?Ὴ) ; U+1FCA GREEK CAPITAL LETTER ETA WITH VARIA ≡
  ;;("H;" ?Ή) ; U+1FCB GREEK CAPITAL LETTER ETA WITH OXIA ≡
  ("H{" ?ῌ) ; U+1FCC GREEK CAPITAL LETTER ETA WITH PROSGEGRAMMENI ≡
  ("i_" ?ῐ) ; U+1FD0 GREEK SMALL LETTER IOTA WITH VRACHY ≡
  ("i-" ?ῑ) ; U+1FD1 GREEK SMALL LETTER IOTA WITH MACRON ≡
  ("i:]" ?ῒ) ; U+1FD2 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND VARIA ≡
                                        ;("i:;" ?ΐ) ; U+1FD3 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND OXIA ≡
  ("i[" ?ῖ) ; U+1FD6 GREEK SMALL LETTER IOTA WITH PERISPOMENI ≡
  ("i:[" ?ῗ) ; U+1FD7 GREEK SMALL LETTER IOTA WITH DIALYTIKA AND PERISPOMENI ≡
  ("I_" ?Ῐ) ; U+1FD8 GREEK CAPITAL LETTER IOTA WITH VRACHY ≡
  ("I-" ?Ῑ) ; U+1FD9 GREEK CAPITAL LETTER IOTA WITH MACRON ≡
  ("I]" ?Ὶ) ; U+1FDA GREEK CAPITAL LETTER IOTA WITH VARIA ≡
                                        ;("I;" ?Ί) ; U+1FDB GREEK CAPITAL LETTER IOTA WITH OXIA ≡
  ("y_" ?ῠ) ; U+1FE0 GREEK SMALL LETTER UPSILON WITH VRACHY ≡
  ("y-" ?ῡ) ; U+1FE1 GREEK SMALL LETTER UPSILON WITH MACRON ≡
  ("y:]" ?ῢ) ; U+1FE2 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND VARIA ≡
  ;;("y:;" ?ΰ) ; U+1FE3 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND OXIA ≡
  ("r'" ?ῤ) ; U+1FE4 GREEK SMALL LETTER RHO WITH PSILI ≡
  ("r\"" ?ῥ) ; U+1FE5 GREEK SMALL LETTER RHO WITH DASIA ≡
  ("y[" ?ῦ) ; U+1FE6 GREEK SMALL LETTER UPSILON WITH PERISPOMENI ≡
  ("y:[" ?ῧ) ; U+1FE7 GREEK SMALL LETTER UPSILON WITH DIALYTIKA AND PERISPOMENI ≡
  ("Y_" ?Ῠ) ; U+1FE8 GREEK CAPITAL LETTER UPSILON WITH VRACHY ≡
  ("Y-" ?Ῡ) ; U+1FE9 GREEK CAPITAL LETTER UPSILON WITH MACRON ≡
  ("Y]" ?Ὺ) ; U+1FEA GREEK CAPITAL LETTER UPSILON WITH VARIA ≡
  ;;("Y;" ?Ύ) ; U+1FEB GREEK CAPITAL LETTER UPSILON WITH OXIA ≡
  ("R\"" ?Ῥ) ; U+1FEC GREEK CAPITAL LETTER RHO WITH DASIA ≡
  ("v]{" ?ῲ) ; U+1FF2 GREEK SMALL LETTER OMEGA WITH VARIA AND YPOGEGRAMMENI ≡
  ("v{" ?ῳ) ; U+1FF3 GREEK SMALL LETTER OMEGA WITH YPOGEGRAMMENI ≡
  ("v;{" ?ῴ) ; U+1FF4 GREEK SMALL LETTER OMEGA WITH OXIA AND YPOGEGRAMMENI ≡
  ("v[" ?ῶ) ; U+1FF6 GREEK SMALL LETTER OMEGA WITH PERISPOMENI ≡
  ("v[{" ?ῷ) ; U+1FF7 GREEK SMALL LETTER OMEGA WITH PERISPOMENI AND YPOGEGRAMMENI ≡
  ("O]" ?Ὸ) ; U+1FF8 GREEK CAPITAL LETTER OMICRON WITH VARIA ≡
  ;;("O;" ?Ό) ; U+1FF9 GREEK CAPITAL LETTER OMICRON WITH OXIA ≡
  ("V]" ?Ὼ) ; U+1FFA GREEK CAPITAL LETTER OMEGA WITH VARIA ≡
  ;;("V;" ?Ώ) ; U+1FFB GREEK CAPITAL LETTER OMEGA WITH OXIA ≡
  ("V{" ?ῼ) ; U+1FFC GREEK CAPITAL LETTER OMEGA WITH PROSGEGRAMMENI ≡

  ;; US QWERTY keyboard mappings provided behind a backslash escape
  ("\\1" ?1)
  ("\\!" ?!)
  ("\\2" ?2)
  ("\\@" ?@)
  ("\\3" ?3)
  ("\\#" ?#)
  ("\\4" ?4)
  ("\\$" ?$)
  ("\\5" ?5)
  ("\\%" ?%)
  ("\\6" ?6)
  ("\\^" ?^)
  ("\\7" ?7)
  ("\\&" ?&)
  ("\\8" ?8)
  ("\\*" ?*)
  ("\\9" ?9)
  ("\\(" ?\()
  ("\\0" ?0)
  ("\\)" ?\))
  ("\\-" ?-)
  ("\\_" ?_)
  ("\\=" ?=)
  ("\\+" ?+)
  ("\\`" ?`)
  ("\\~" ?~)
  ("\\q" ?q)
  ("\\Q" ?Q)
  ("\\w" ?w)
  ("\\W" ?W)
  ("\\e" ?e)
  ("\\E" ?E)
  ("\\r" ?r)
  ("\\R" ?R)
  ("\\t" ?t)
  ("\\T" ?T)
  ("\\y" ?y)
  ("\\Y" ?Y)
  ("\\u" ?u)
  ("\\U" ?U)
  ("\\i" ?i)
  ("\\I" ?I)
  ("\\o" ?o)
  ("\\O" ?O)
  ("\\p" ?p)
  ("\\P" ?P)
  ("\\[" ?\[)
  ("\\{" ?{)
  ("\\]" ?\])
  ("\\}" ?})
  ("\\a" ?a)
  ("\\A" ?A)
  ("\\s" ?s)
  ("\\S" ?S)
  ("\\d" ?d)
  ("\\D" ?D)
  ("\\f" ?f)
  ("\\F" ?F)
  ("\\g" ?g)
  ("\\G" ?G)
  ("\\h" ?h)
  ("\\H" ?H)
  ("\\j" ?j)
  ("\\J" ?J)
  ("\\k" ?k)
  ("\\K" ?K)
  ("\\l" ?l)
  ("\\L" ?L)
  ("\\;" ?\;)
  ("\\:" ?:)
  ("\\'" ?')
  ("\\\"" ?\")
  ("\\\\" ?\\)
  ("\\|" ?|)
  ("\\z" ?z)
  ("\\Z" ?Z)
  ("\\x" ?x)
  ("\\X" ?X)
  ("\\c" ?c)
  ("\\C" ?C)
  ("\\v" ?v)
  ("\\V" ?V)
  ("\\b" ?b)
  ("\\B" ?B)
  ("\\n" ?n)
  ("\\N" ?N)
  ("\\m" ?m)
  ("\\M" ?M)
  ("\\," ?,)
  ("\\<" ?<)
  ("\\." ?.)
  ("\\>" ?>)
  ("\\/" ?/)
  ("\\?" ??)

  ;; Some useful punctuation on AltGr keys of US keyboards provided
  ;; behind a "|" escape
  ("|[" ?“) ;; U+201C LEFT DOUBLE QUOTATION MARK
  ("|{" ?”) ;; U+201D RIGHT DOUBLE QUOTATION MARK
  ("|]" ?‘) ;; U+2018 LEFT SINGLE QUOTATION MARK
  ("|}" ?’) ;; U+2019 RIGHT SINGLE QUOTATION MARK
  ("|\\" ?«) ;; U+00AB LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
  ("||" ?») ;; U+00BB RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK

 )

 (provide 'greek-polytonic)
;;; greek-polytonic.el ends here
