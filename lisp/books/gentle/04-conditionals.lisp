; 28 DEcember 2022
; Conditionals
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam))
(in-package :my-eval-test)

; 4.1 Introduction

; conditionals
; predicate expressions

; 4.2 The IF special function
; Conditionals are always macros or special functions
; DEFUN and QUOTE are also macros of special functions

; (IF (<test>) (<true part>) (<false part>))

(test if-test
  (is (EQUAL (if (oddp 1) 'odd 'even) 'odd))
  (is (EQUAL (if (oddp 2) 'odd 'even) 'even))
  (is (EQUAL (if t 'test-was-true 'test-was-false) 'test-was-true))
  (is (EQUAL (if nil 'test-was-true 'test-was-false) 'test-was-false))
  (is (EQUAL (if (symbolp 'foo) (* 5 5) (+ 5 5)) 25))
  (is (EQUAL (if (symbolp 1) (* 5 5) (+ 5 5)) 10)))

(defun my-abs (x)
  (if (< x 0) (- x) x))

(test my-abs-test
  (is (EQUAL (my-abs -5) 5))
  (is (EQUAL (my-abs 5) 5)))

(defun symbol-test (x)
  (if (symbolp x) (list 'yes x 'is 'a 'symbol)
    (list 'no x 'is 'not 'a 'symbol)))

(test symbol-test-test
  (is (EQUAL (symbol-test 'rutabaga) '(YES RUTABAGA IS A SYMBOL)))
  (is (EQUAL (symbol-test 12345) '(NO 12345 IS NOT A SYMBOL))))

; exercise 4.1
; Write a function MAKE_EVEN that makes an odd number even 
; by adding one to it.  If the input to MAKE-EVEN is already
; even, it should be returned unchanged.

(defun MAKE-EVEN (x)
  (if (evenp x) x (+ x 1)))

(test make-even-test
  (is (EQUAL (make-even 4) 4))
  (is (EQUAL (make-even 3) 4)))

; exercise 4.2
; Write a function FURTHER that makes a positive number
; larger by adding one to it, and a negative number smaller by'
; subtracting one from it. What does your function do it given the number 0?
(defun FURTHER (x)
  (if (= x 0) 0 
    (if (> x 0) (+ x 1) (- x 1))))

(test further-test
  (is (EQUAL (further 0) 0))
  (is (EQUAL (further 5) 6))
  (is (EQUAL (further -5) -6)))

; exercise 4.3
; Recall the primative function NOT: It returns NIL for a true
; input and T for a false one.  Suppose Lisp didn't have a NOT
; primative. Show how to write NOT using if and the constants
; (no other functions). Call your function MY-NOT.
(defun MY-NOT (x)
  (if x nil T))

(test my-not-test
  (is-false (my-not T))
  (is-true (my-not nil)))

; exercise 4.4
; Write a function ORDERED that takes two number as input
; and makes a list of them in ascending order. (ORDERED 3 4)
; should return the list (3 4). (ORDERED 4 3) should also return
; (3 4), in other words, the first and second inputs should
; appear in reverse order when the first is great than the second.

(defun ORDERED (x y)
  (if (> x y) (list y x) (list x y)))

(test ordered-test
  (is (EQUAL (ordered 3 4) '(3 4)))
  (is (EQUAL (ordered 4 3) '(3 4))))

; 4.3 The COND macro
; (COND (test-1 consequent-1)
;       (test-2 consequent-2)
;       (test-3 consequent-3)
;             ....
;       (test-n consequent-n)

(defun compare (x y)
  (cond ((equal x y) 'numbers-are-the-same)
        ((> x y) 'first-is-bigger)
        ((< x y) 'first-is-smaller)))

(test compare-test
  (is (EQUAL (compare 3 5) 'first-is-smaller))
  (is (EQUAL (compare 5 3) 'first-is-bigger))
  (is (EQUAL (compare 3 3) 'numbers-are-the-same))

; exercise 4.5
; For each of the following calls to COMPARE, write "1," "2," or
; "3" to indicate which clause of the COND will have a predicate
; that evaluates to true.
  (is (EQUAL (compare 9 1) 'first-is-bigger))
  (is (EQUAL (compare (+ 2 2 ) 5) 'first-is-smaller))
  (is (EQUAL (compare 6 (* 2 3)) 'numbers-are-the-same)))

; 4.4 Using T as a test
;
; (T consequent)

(defun where-is (x)
  (cond ((equal x 'paris) 'france)
        ((equal x 'london) 'england)
        ((equal x 'beijing) 'china)
        (t 'unknown)))

(test where-is-test
  (is (EQUAL (where-is 'london) 'england))
  (is (EQUAL (where-is 'beijing) 'china))
  (is (EQUAL (where-is 'hackensack) 'unknown)))

; any if IF expression can be replaced with
;
; (COND (test true-part)
;       (T false-part))

; exercise 4.6
; Write a version of the absolute value function MY-ABS using 
; COND instead of if

(defun MY-COND-ABS (x)
  (COND ((< x 0) (- x))
        (T x)))

(test my-cond-abs-test
  (is (EQUAL (my-cond-abs -5) 5))
  (is (EQUAL (my-cond-abs 5) 5))
  (is (EQUAL (my-cond-abs 0) 0)))

; 4.5 Two more examples of CON

(defun emphasis (x)
  (cond ((equal (first x) 'good) (cons 'great (rest x)))
        ((equal (first x) 'bad) (cons 'awful (rest x)))
        (T x)))

(test emphasis-test
  (is (equal (emphasis '(good mystery story)) '(great mystery story)))
  (is (equal (emphasis '(bad mystery story)) '(awful mystery story)))
  (is (equal (emphasis '(ok mystery story)) '(ok mystery story))))

(defun compute (op x y)
  (cond ((equal op 'sum-of) (+ x y))
        ((equal op 'product-of) (* x y))
        (t '(that does not compute))))

(test compute-test
  (is (equal (compute 'sum-of 3 7) 10))
  (is (equal (compute 'product-of 2 4) 8))
  (is (equal (compute 'zorch-of 3 7) '(that does not compute))))

; 4.6 COND and parenthesis errors

; exercise 4.7
; For each of the following COND expressions, tell whether the
; Parenthesization is correct or incorrect. If incorrect, explain
; where the error lies.

; exercise 4.8

; exercise 4.9

; exercise 4.10
; Write a function CONSTRAIN that takes three inputs called X,
; MAX, and MIN.  If X is less than MIN, it should return MIN; if
; X is greate tha MAX, it should return MAX. Otherwise,
; since X is between MIN and MAX, it should return X. (CONSTRAIN
; 3 -50 50) should return 3. (CONSTRAIN 92 -50 50)
;should return 50. Wrtie one version using COND and another 
; using nested ifs

(defun CONSTRAIN (x min max)
  (COND ((< x min) min)
        ((> x max) max)
        (t x)))

(defun CONSTRAIN-IF (x min max)
  (if (< x min) min
      (if (> x max) max x)))

(test e-4-10-test
  (is (equal (CONSTRAIN 3 -50 50) 3))
  (is (equal (CONSTRAIN-IF 3 -50 50) 3))
  (is (equal (CONSTRAIN -92 -50 50) -50))
  (is (equal (CONSTRAIN-IF -92 -50 50) -50))
  (is (equal (CONSTRAIN 92 -50 50) 50))
  (is (equal (CONSTRAIN-IF 92 -50 50) 50)))

; exercise 4.11
; Write a function FIRSTZERO that take a list of three numbers
; as input and returns a word (one of "first," "second," "third," 
; or "none") indicating where the first zero appears in the list.
; Example: (FIRSTZERO '(3 0 4)) should return SECOND. 
; What happends if you try to call FIRSTZERO with three sepa-
; rate numbers instead of a list of three numbers, as in
; (FIRSTZERO 3 0 4)?
(defun FIRSTZERO (x)
  (cond ((equal (car x) 0) 'first)
        ((equal (cadr x) 0) 'second)
        ((equal (caddr x) 0) 'third)
        (t '(no zero))))

(test e-4-11-test
  (is (equal (firstzero '(3 0 4)) 'second))
  (is (equal (firstzero '(0 3 4)) 'first))
  (is (equal (firstzero '(3 4 0)) 'third))
  (is (equal (firstzero '(3 1 4)) '(no zero))))



; exercise 4.12
; Write a function CYCLE that cyclically counts from 1 to 99.
; CYCLE called with an input of 1 should return 2, with an input
; of 2 should return 3, with an input of 3 should return 4, and so 
; on. With the an input of 99, CYCLE should return 1. That's the
; cyclical part. Do not try to solve with 99 COND clases!

(defun CYCLE (x)
  (cond ((= 99 x) 1)
        (t (+ 1 x))))
(test e-4-12-test
  (is (equal (cycle 1) 2))
  (is (equal (cycle 54) 55))
  (is (equal (cycle 99) 1)))

; exercise 4.13
; Write a function HOWCOMPUTE that is the inverse of the
; COMPUTE function described previously.  HOWCOMPUTE
; takes three numbers as input and fiures out what operation
; would produce thethird from the first two. (HOWCOMPUTE
; 3 4 7) should return SUM-OF. (HOWCOMPUTE 3 4 12)
; should return PRODUCT-OF. HOWCOMPUTE shoudl return 
; the list (BEATS ME) if it can't find a relationship between the
; first two inputs and the third.  Suggest some ways to extend
; HOWCOMPUTE.

(defun HOWCOMPUTE (x y z)
  (cond ((equal (+ x y) z) 'SUM-OF)
        ((equal (* x y) z) 'PRODUCT-OF)
        (t '(BEATS ME))))

(test e-4-13-test
  (is (EQUAL (HOWCOMPUTE 2 2 4) 'SUM-OF))
  (is (EQUAL (HOWCOMPUTE 1 4 4) 'PRODUCT-OF))
  (is (EQUAL (HOWCOMPUTE 2 2 1/2) '(BEATS ME))))

; 4.7 The AND and OR macros

(defun small-positive-oddp (x)
  (AND (< x 100)
       (> x 0)
       (oddp x)))

(test small-positive-oddp-test
  (is-false (small-positive-oddp 201))
  (is-false (small-positive-oddp 20))
  (is-false (small-positive-oddp -201))
  (is-true (small-positive-oddp 1))
  (is-true (small-positive-oddp 99)))

(defun gtest (x y)
  (or (> x y)
      (zerop x)
      (zerop y)))

(test gtest-test
  (is-false (gtest 1 1))
  (is-false (gtest 1 10))
  (is-true (gtest 10 1))
  (is-true (gtest 0 1))
  (is-true (gtest 10 0)))

; 4.8 Evaluating AND or OR

(test and-or-or-test
  (is (equal (and nil t t) nil))
  (is (equal (and 'george nil 'harry) nil))
  (is (equal (and 'george 'fred 'harry) 'harry))
  (is (equal (and 1 2 3 4 5) 5))
  (is (equal (or nil t t) t))
  (is (equal (or 'george nil 'harry) 'george))
  (is (equal (or 'george 'fred 'harry) 'george))
  (is (equal (or nil 'fred 'harry) 'fred)))

; exercise 4.14
; What results do the following expressions produce? Read the 
; evaluation rules for AND and OR carefully before answering

(test e-4-14-test
  (is (equal (and 'fee 'fie 'foe) 'foe))
  (is (equal (or 'fee 'fie 'foe) 'fee))
  (is (equal (or nil 'fie nil) 'fie))
  (is (equal (and 'fee 'fie nil) nil))
  (is (equal (and (equal 'abc 'abc) 'yes) 'yes))
  (is (equal (or (equal 'abc 'abc) 'yes) t))
  )

; 4.9 Building complex predicates

(defun how-alike (a b)
  (cond ((equal a b) 'the-same)
        ((and (oddp a) (oddp b)) 'both-odd)
        ((and (not (oddp a)) (not (oddp b))) 'both-evan)
        ((and (< a 0) (< b 0)) 'both-negative)
        (t 'not-alike)))

(test how-alike-test
  (is (equal (how-alike 7 7) 'the-same))
  (is (equal (how-alike 3 5) 'both-odd))
  (is (equal (how-alike -2 -3) 'both-negative))
  (is (equal (how-alike 5 8) 'not-alike)))

(defun same-sign (x y)
  (or (and (zerop x) (zerop y))
      (and (< x 0) (< y 0))
      (and (> x 0) (> y 0))))

(test same-sign-test
  (is-true (same-sign 0 0))
  (is-true (same-sign -3 -4))
  (is-true (same-sign 3 4 ))
  (is-false (same-sign -3 4)))


; exercise 4.15
; Write a predicate called GEQ that returns T if its first input is
; greater than or equal to it second input.

; exercise 4.16
; Write a function that squares a number if it is odd and
; positive, doubles it if it is odd and negative, and otherwise divides
; the number by 2.

; exercise 4.17
; CHILD or ADULT test

; exercise 4.18
; ROCK PAPER SCISSORS

; 4.12 Boolean functions

(defun logical-and (x y)
  (and x y t))

(test logical-and-test
  (is (equal (logical-and 'tweet 'woof) t))
  (is (equal (and 'tweet 'woof) 'woof)))

; exercise 4.29

; exercise 4.30

; exercise 4.31

; 4.13 Truth tables

; exercise 4.32

; exercise 4.33

; exercise 4.34

; 4.14 DeMorgan's Theorem

(defun demorgan-and (x y)
  (not (or (not x) (not y))))

(defun demorgan-or (x y)
  (not (and (not x) (not y))))

(test demorgans-theorem-test
  (is (equal (and nil nil) (demorgan-and nil nil)))
  (is (equal (or nil nil) (demorgan-or nil nil)))
  (is (equal (and nil t) (demorgan-and nil t)))
  (is (equal (or nil t) (demorgan-or nil t)))
  (is (equal (and t nil) (demorgan-and t nil)))
  (is (equal (or t nil) (demorgan-or t nil)))
  (is (equal (and t t) (demorgan-and t t)))
  (is (equal (or t t) (demorgan-or t t))))

; exercise 4.35

; exercise 4.36

; exercise 4.37

; exercise 4.38

; exercise 4.39





















