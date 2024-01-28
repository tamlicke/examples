; 13-arrays-hash_tables-and-property-lists.lisp

; 12 February 2023
; Arrays, Hash Tables, and Property Lists
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam))
(in-package :my-eval-test)

; 13.1 Introductionq

; 13.2 Creating An Array

(setf my-vec '#(tuning violin 440 a))

