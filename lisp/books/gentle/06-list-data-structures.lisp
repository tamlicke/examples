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
  (handler-case (nth 3 '(A B C . D))
    (type-error (c)
      (is-true t))))

; Exercise 6.3

; Exercise 6.4

; Exercise 6.5
(test exercise6.5
  (let ((line '(roses are red)))
    (is (equal
      (reverse line)
      '(red are roses)))
    (is (equal
      (first (last line))
      'red) )
    (is (equal
      (nth 1 line)
      'are))
    (is (equal
      (reverse (reverse line))
      '(roses are red)))
    (is (equal
      (append line (list (first line)))
      '(roses are red roses)))
    (is (equal
      (append (last line) line)
      '(red roses are red)))
    (is (equal
      (list (first line) (last line))
      '(roses (red))))
    (is (equal
      (cons (last line) line)
      '((red) roses are red) ))
    (is (equal
      (remove 'are line)
      '(roses red)))
    (is (equal
      (append line '(violets are blue))
      '(roses are red violets are blue)))))


; Exercise 6.6. 
; Use the LAST function to write a 
; function called LAST-ELEMENT that 
; returns the last element of a list 
; instead of the last cons cell.

(defun last-element (X)
  "return the last element in a list" 
  (car (last x)))

; Write another version of LASTELEMENT ; using REVERSE instead of LAST.

(defun last-element-2 (x)
  (car (reverse x)))

;Write another version using NTH and ; LENGTH.

(defun last-element-3 (x)
  (nth (- (length x) 1) x))

(test exercise6.6 
  (is (equal
    (last-element '(a b c))
    'C))
  (is (equal
    (last-element-2 '(a b c))
    'c))
  (is (equal
    (last-element-3 '(a b c))
    'C)))


; Exercise 6.7. 
; Use REVERSE to write a NEXT-TO-LAST function that returns the 
; next-to-last element of a list. 

(defun next-to-last (x)
  "Return the next to last element of a list"
  (cadr (reverse x)))


; Write another version using NTH.

(defun next-to-last-2 (x)
  "Return the next to last element of a list"
  (nth (- (length x) 2) x))


(test exercise6.7
  (is (equal
    (next-to-last '(a b c))
    'b))
  (is (equal
    (next-to-last-2 '(a b c))
    'b)))

; Exercise 6.8. 
; Write a function MY-BUTLAST that returns a list 
; with the last element removed. 
; (MYBUTLAST '(ROSES ARE RED)) should return the 
; list (ROSES ARE). (MY-BUTLAST '(G A G A)) should return (G A G).
(defun my-butlast (x)
  "Remove the last element of a list"
  (reverse (cdr (reverse x))))

(test exercise6.8
  (is (equal
    (my-butlast '(roses are red))
    '(roses are)))
  (is (equal
    (my-butlast '(g a g a))
    '(g a g))))

; Exercise 6.9. 
; What primitive function does the following reduce to?

(defun mystery (x) (first (last (reverse x))))

(test exercise6.9 
  (is (equal
    (mystery '(a b c d))
    'a)))

; Exercise 6.10. 
; A palindrome is a sequence that reads the same forwards 
; and backwards. The list (A B C D C B A) is a palindrome; 
; (A B C A B C) is not. 
; Write a function PALINDROMEP that returns T if its input 
; is a palindrome.

(defun palindromep (x)
  "Return true if the list is a palindrome"
  (if (> (length x) 1) 
    (if (equal (car x) (nth (- (length x) 1) x))
      (palindromep (reverse (cdr (reverse (cdr x)))))
      nil)
    t))

(test exercise6.10 
  (is-true (palindromep '(A B C D C B A)))
  (is-false (palindromep '(A B C A B C))))

; Exercise 6.11. Write a function MAKE-PALINDROME that makes a 
; palindrome out of a list, for example, given (YOU AND ME) 
; as input it should return (YOU AND ME ME AND YOU).

(defun make-palindrome (x)
  "Create a palindrome from a list"
  (append x (reverse x)))

(test execise6.11
  (is (equal
    (make-palindrome '(YOU AND ME))
    '(YOU AND ME ME AND YOU))))