(in-package :cl-user)
(defpackage my-fiveam-test
  (:use :cl
        :fiveam))
(in-package :my-fiveam-test)

; exercise 1.1
(test simple-maths
  (is (= 13 (+ 6 7)))
  (is (= 12 (* 3 4)))
  (is (= 2 (/ 16 8)))
  (is (= 1 (- 4  3)))
  (is (= 3 (abs -3)))
  (is (= -48 (* -8 6)))
  (is (= 5/3 (/ 15 9))))

; exercise 1.2
(test symbol-or-number
  (is-false (Numberp 'AARDVARK))
  (is-true (SymbolP 'AARDVARK))  
  (is-true (Numberp 87))
  (is-false (SymbolP 87))  
  (is-false (Numberp 'PLUMBING))
  (is-true (SymbolP 'PLUMBING))  
  (is-false (Numberp '1-2-3-GO))
  (is-true (SymbolP '1-2-3-GO))  
  (is-false (SymbolP 1492))  
  (is-true (Numberp 1492))
  (is-false (SymbolP 3.14159265358979))  
  (is-true (Numberp 3.14159265358979))
  (is-false (SymbolP 22/7))  
  (is-true (Numberp 22/7))
  (is-true (SymbolP 'ZEROP))  
  (is-false (Numberp 'ZEROP))
  (is-true (SymbolP 'ZERO))  
  (is-false (Numberp 'ZERO))
  (is-false (SymbolP 0))  
  (is-true (Numberp 0))
  (is-false (SymbolP -12))  
  (is-true (Numberp -12))
  (is-false (Numberp 'SEVENTEEN))
  (is-true (SymbolP 'SEVENTEEN)))

; exercise 1.3
; 7 < 11 = T
; 12 ODDP = nil
; KIRK EQUAL SPOCK = nil
; TWELVE NUMBERP = nil
; -4 < -3 = T
; 0 ZEROP = T
; 9 EQUAL -9 = nil
(test computations
  (is-true (< 7 11))
  (is-false (ODDP 12))
  (is-false (EQUAL 'KIRK 'SPOCK))
  (is-false (NUMBERP 'TWELVE))
  (is-true (< -4 -3))
  (is-true (ZEROP 0))
  (is-false (EQUAL 9 -9)))

; exercise 1.4
; Define a SUB2 function that subtracts two from its input
(defun SUB2 (n1)
  (- n1 2))
(test sub2-test
  (is (= (SUB2 2) 0)))

; exercise 1.5
; Show how to write TWOP in terms of ZEROP and SUB2.
(defun TWOP (n1)
  (ZEROP (SUB2 n1)))
(test twop-test
  (is-true (TWOP 2))
  (is-false (TWOP 4))
  (is-false (TWOP 0))
  (is-false (TWOP -2)))

; exercise 1.6
; The HALF function returns a number that is one-half of its input. Show how 
; to define HALF two different ways.
(defun HALF (n1)
  (/ n1 2))
(defun HALF-ALT (n1)
  (* n1 1/2))

(test half-test
  (is (= (HALF 4) 2))
  (is (= (HALF-ALT 4) 2))
  (is (= (HALF 1) 1/2))
  (is (= (HALF-ALT 1) 1/2)))

; exercise 1.7
; Write a MULTI-DIGIT-P predicate that returns true if its input is 
; greater than 9.

(defun MULTI-DIGIT-P (n1)
  (OR (> n1 9) (< n1 -9)))

(test multi-digit-p-test
  (is-true (MULTI-DIGIT-P 10))
  (is-false (MULTI-DIGIT-P 5))
  (is-true (MULTI-DIGIT-P -10)))

; exercise 1.8
; What does this function do to a number?

(defun CHANGE-SIGN (n1)
  (- 0 n1))

(test change-sign-test
  (is (= (CHANGE-SIGN 2) -2)) 
  (is (= (CHANGE-SIGN -2) 2)))

; exercise 1.9
; Write a predicate TWOMOREP that returns T if its first input is 
; exactly two more than its second input.  Use the ADD2
; function in your definition of TWOMOREP.

(defun ADD2 (n1)
  (+ n1 2))

(defun TWOMOREP (n1 n2)
  (EQUAL n1 (ADD2 n2)))

(defun TWOMOREP-ALT (n1 n2)
  (EQUAL (SUB2 n1) n2))

(test twomorep-test
  (is-true (TWOMOREP 4 2))
  (is-true (TWOMOREP-ALT 4 2)))







