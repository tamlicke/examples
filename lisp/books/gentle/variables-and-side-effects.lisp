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

; 5.1 Introduction

; side effects - actions a function takes other than returning a value
; changing the value of a variable is one type of side effect

; 5.2 Local and Global Variables

; scope - region where something can be referenced

; local variables - scope inside a function

(defun DOUBLE (n)
  (* n 2))

(test double-test
  (is (equal (double 5) 10)))

; global variable

; 5.3 SETF assigns a value to a variable

(setf vowels '(a e i o u))

(test setf-test
  (is (equal vowels '(A E I O U)))
  (is (equal (length vowels) 5))
  (is (equal (rest vowels) '(E I O U)))
  (setf vowels '(a e i o u and sometimes y))
  (is (equal (rest (rest vowels)) '(I O U AND SOMETIMES Y))))

(defvar trovels)
(setf trowels '(gerdening pointing finishing))

; 5.4 Side effects

; (random 5)
; (random 5.0) 

; The LET special function

(defun average (x y)
  (let ((sum (+ x y)))
    (list x y 'average 'is (/ sum 2.0))))

(test average-test
  (is (equal (average 3 7) '(3 7 average is 5.0))))

; (LET ((var-1 value-1)
;       (var-2 value-2)
;       ...
;       (var-n value-n))
;  body)

; exercise 5.1

; 5.6 The LET* special function

(defun price-change (old new)
  (let* ((diff (- new old))
         (proportion (/ diff old))
         (percentage (* proportion 100.0)))
    (list 'widgets 'changed 'by percentage 
          'percent)))

(test price-change-test
  (is (equal (price-change 1.25 1.35) '(widgets changed by 8.000002 percent))))

(defun faulty-size-range (x y z)
  (let  ((biggest (max xyz))
         (smallest (min x yz))
         (r (/ biggest smallest 1.0)))
    (list 'factor 'of r)))

(test faulty-size-range-test 
  (is (equal (faulty-range-test 35 87 4) '(factor of 5))))









