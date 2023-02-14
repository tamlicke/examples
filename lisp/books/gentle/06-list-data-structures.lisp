; 25 January 2023
; List Data Structures
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam)
  (:export :throw-die-histogram
           :throw-die
           :throw-dice
           :craps))

(in-package :my-eval-test)

; 6.3 The APPEND Function

(defun add-to-end (x e)
  "add element e to the end of list x"
  (append x (list e)))

(test add-to-end-test
  (is (equal (add-to-end '(a b c) 'd) '(a b c d))))

; 6.4 Comparing CONS, LIST, and APPEND

; 6.5 More Functions On Lists

; 6.5.1 Reverse

; 6.5.2 NTH and NTHCDR

; Exercise 6.1
; Why is (NTH 4 '(A B C)) equal to NIL?

(test nth-test
  (is-false (nth 4 '(a b c))))

; Exercise 6.2
; What is the value of (NTH 3 '(A B C . D), and why?

(test nth-test-2
  (is (equal (nth 3 '(A B C . D)) 'C)))




