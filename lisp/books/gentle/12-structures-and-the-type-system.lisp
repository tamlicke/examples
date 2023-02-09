; 04 February 2023
; Structure and the Type System
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam))
(in-package :my-eval-test)

; 12.1 Introduction

; 12.2 TYPEP And TYPE-OF

(test typep-test
  (is-true (typep 3 'number))
  (is-true (typep 3 'integer))
  (is-false (typep 3 'float))
  (is-true (typep 'foo 'symbol)))

(test type-of-test
  (is (equal (type-of 'aardvark) 'symbol))
  (is (equal (type-of 3.5) 'single-float))
  (is (equal (type-of '(bat breath)) 'cons))
  (is (equal (type-of "Phooey") 'simple-base-string)))

