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

; exercise 1.10
; Find a way to write the TWOMOREP predicate using the SUB2
; instead of ADD2

(defun TWOMOREP-ALT (n1 n2)
  (EQUAL (SUB2 n1) n2))

(test twomorep-test
  (is-true (TWOMOREP 4 2))
  (is-true (TWOMOREP-ALT 4 2)))

; exercise 1.11
; The average of two numbers is half their sum. Write the AVERAGE function.

(defun AVERAGE (n1 n2)
  (/ (+ n1 n2) 2))

(test average-test
  (is (= (AVERAGE 2 4) 3))
  (is (= (AVERAGE 342342 435345) 777687/2
)))

; exercise 1.12
; Write a MORE-THAN-HALF-P predicate that return T if its 
; first input is more than half of it second input.

(defun MORE-THAN-HALF-P (n1 n2)
  (> (/ n1 2) n2))

(test more-than-half-p
 (is-false (MORE-THAN-HALF-P 5 3))
 (is-true (MORE-THAN-HALF-P 7 3)))

; exercise 1.13
; The following function returns the same result no matter what its input.
; What result does it return?
; --> NUMBERP --> SYMBOLP -->

(defun NUMBERP-SYMBOLP (n1)
  (SYMBOLP (NUMBERP n1)))

(test numberp-symbolp-test
  (is-true (NUMBERP-SYMBOLP 1234))
  (is-true (NUMBERP-SYMBOLP 'YO))
  (is-true (SYMBOLP T))
  (is-true (SYMBOLP nil)))

; exercise 1.14
; Fill in the results of the following computations:
; nil --> NOT -->
; 12 --> NOT -->
; NOT --> NOT -->
(test not-test
  (is-true (NOT nil))
  (is-false (NOT 12))
  (is-false (NOT 'NOT)))

; exercise 1.15
; Write a predicate NOT-ONEP that returns T if its input is 
; anything other than one.

(defun ONEP (n1)
  (EQUAL n1 1))

(defun NOT-ONEP (n1)
  (NOT (ONEP n1)))

(test not-onep-test
  (is-true (NOT-ONEP 0))
  (is-false (NOT-ONEP 1)))

; exercise 1.16
; Write the predicate NOT-PLUSP that returns T if its
; input is not greater than zero.


(defun NOT-PLUSP (n1)
  (NOT (PLUSP n1)))

(test not-plusp-test
  (is-true (NOT-PLUSP 0))
  (is-false (NOT-PLUSP 5))
  (is-true (NOT-PLUSP -5)))

; exercise 1.17
; Some earlier Lisp dialects did not have the EVENP primative;
; they only had ODDP.  Show how to define EVENP in terms of ODDP.

(defun EVENP-ALT (n1)
  (NOT (ODDP n1)))

(test evenp-alt-test
  (is-true (EVENP-ALT 4))
  (is-true (EVENP 4))
  (is-false (EVENP-ALT 3))
  (is-false (EVENP 3))
  (is-true (EVENP 0)) 
  (is-true (EVENP-ALT 0))
  (is-false (ODDP 0)))

; exercise 1.18
; Under what condition does this predicate function return T?
; --> ADD1 --> ADD1 --> ZEROP -->

(defun ADD1 (n1)
  (1+ n1))

(defun ADD1-ADD1-ZEROP (n1)
  (ZEROP (ADD1 (ADD1 n1))))

(test add1-add1-zerop-test
   (is-true (ADD1-ADD1-ZEROP -2))
   (is-false (ADD1-ADD1-ZEROP 0)))

; exercise 1.19
; What result does the function below produce when given the
; input NIL? What about the input T? Will all data flow through 
; this function unchanged? What result is produced for the 
; input RUTABAGA?
; --> NOT --> NOT -->

(defun NOT-NOT (n1)
  (NOT (NOT n1)))

(test not-not-test 
  (is-true (NOT-NOT T))
  (is-false (NOT-NOT NIL))
  (is-true (NOT-NOT 'RUTABAGA)))

; exercise 1.20
; A truth function is a function whose inputs and output are
; truth values, that is, true or false. NOT is a truth function. 
; (Even though NOT accepts other inputs besides T or NIL, it
; only cares if its input is true on not.) Write XOR, the exclusive-
; or truth function, which returns T when one of it inputs is
; NIL and the other is T, returns NIL when both are NIL or 
; both are T. (hint: This is easier than it sounds.)

(defun XOR (n1 n2)
  (OR (AND (NOT n1) n2) (AND n1 (NOT n2))))

(test xor-test
  (is-false (XOR nil nil))
  (is-true (XOR T nil))
  (is-true (XOR nil T))
  (is-false (XOR T T)))

  

 




