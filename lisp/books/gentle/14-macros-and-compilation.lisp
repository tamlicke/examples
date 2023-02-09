; 04 February 2023
; Macros and Compilation
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam))
(in-package :my-eval-test)




; 14.1 Introduction

; 14.2 Macros as Shorthand


(test simple
  (is (equal 3 3)))
(test incf-test
    (is (equal (let ((a 3))
                  (incf a)) 4)))

