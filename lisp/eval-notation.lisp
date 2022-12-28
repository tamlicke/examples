; 27 DEcember 2022
; EVAL Notation
; Common LISP
; A Gentle Introduction to Symbolic Computation
; by David S. Touretzky

; SETUP
(in-package :cl-user)
(defpackage my-eval-test
  (:use :cl
        :fiveam))
(in-package :my-eval-test)

; 3.1 Introduction

; EVAL Notation advantages
; - 

; 3.2 The EVAL Function

(test eval-function-test
  (is (= (+ 2 3) 5)))

; 3.3 EVAL notation can do anything box notaiton can do

(test do-anything-test
  (is (= (* 3 (+ 5 6)) 33))
  (is-true (NOT (= 5 6))))

; 3.4 Evaluation rules define the behavioe of EVAL

(test evaluation-rules-test
  (is (= 23 23))
  (is (EQUAL T T))
  (is (EQUAL nil nil)))

; Evaluation Rule for Numbers, T, and NIL: Numbers, an dthe symbols T and NIL 
; evaluat to themselves.

; Evaluation rule for lists
; The first element of a list specifies a function to be called; The remaining elements 
; are the unevaluated arguments to the function.  These arguments must be evaluated, 
; left to right order, to determine the inputs to the function.

(test elevation-list-rule
  (is-true (ODDP (+ 1 6)))
  (is (NOT (EQUAL (+ 7 5) (* 2 8)))))

; exercise 3.1
; What does (NOT (EQUAL 3 (ABS -3))) evaluate to?

(test e-3-1-test
  (is-false (NOT (EQUAL 3 (ABS -3)))))

; exercise 3.2
; Write an expression in EVAL notation to add 8 to 12 and divide
; result by 2.
(test e-3-2-test
  (is (EQUAL (/ (+ 8 12) 2) 10)))

; exercise 3.3
; You can square a number by multiplying it by itself.  Write an 
; expression in EVAL notation to add the square of 3 and the square of 4.
(test e-3-3-test
  (is (EQUAL (+ (* 3 3) (* 4 4)) 25)))

; exercise 3.4
; Draw an evaltrace diagram for each of the following expressions
(test e-3-4-test
  (is (= (- 8 2) 6))
  (is-true (not (oddp 4)))
  (is-true (> (* 2 5) 9))
  (is-false (not (equal 5 (+ 1 4)))))

; 3.5 Defining functioans in EVAL notation

(defun AVERAGE (x y)
  (/ (+ x y) 2.0))

(test average-test
  (is (= (AVERAGE 8 4) 6)))

; defun us a macro function
; it does not evaluate its arguments
; ??? DEFUN stands for def m Q function ??? Not sure what this means?

(defun square (n)
  (* n n))

(test square-test
  (is (= (square 2) 4)))

(defun total-cost (quantity price handling-charge)
  (+ (* quantity price) handling-charge))

(test total-cost-test
  (is (= (total-cost 4 12.95 4.95) 56.75)))

; exercise 3.5
; Write defintions for HALF, CUBE, and ONEMOREP using DEFUB.
; (The cUBE function should take a number n as input and return n^3.)

(defun HALF (x)
  (/ x 2))

(defun CUBE (n)
  (* (* n n) n))

(defun ONEMOREP (x y)
  (EQUAL (+ x 1) y))

(test e-3-5-test
  (is (EQUAL (HALF 4) 2))
  (is (EQUAL (CUBE 2) 8))
  (is-true (ONEMOREP 3 4)))

; exercise 3.7
; Define a function MILES-PER-GALLON that takes three inpute, called
; INITIAL-ODOMETER-READING, FINAL-ODOMETER-READING, and
; GALLONS-CONSUMED, and computes the number of miles traveled
; per gallon of gae.
 
(defun MILES-PER_GALLON (INITIAL-ODOMETER-READING FINAL-ODOMETER-READING GALLONS-CONSUMED)
  (/ (- FINAL-ODOMETER-READING INITIAL-ODOMETER-READING) GALLONS-CONSUMED))

(test e-3-7-test
  (is (= (MILES-PER_GALLON 57643 57832 16.0) 11.8125)))

; exercise 3.8
; How would you define SQUARE in box notation?

; n forks into two inputs

; 3.6 Variables

; 3.7 Evaluating symbols

; Eval for symboks
; Evaluation rule for symbols: A symbol evaluates to 
; the value of the variable it refers to.

(test pi-test
  (is (= pi 3.141592653589793D0)))

; 3.8 Using symbols and lists as data
(test symbols-and-lists-test
  (is-false (equal 'kirk 'spock)))

; Evaluation rule for quoted object:
; A quoted object evaluates to the object without the quote

; 3.9 The problem of misquoting

; 3.10 Three ways to make lists

(test three-ways-test
  (is (EQUAL (list 'foo 'bar 'baz) '(foo bar baz)))
  (is (EQUAL (cons 'foo '(bar baz)) '(foo bar baz)))
  (is (EQUAL (list 33 'squared 'is (* 33 33)) '(33 squared is 1089))))

; execise 3.9
; The following expressions evaluate without any errors. Write down the 
; results.

(test e-3-9-test
  (is (EQUAL (cons 5 (list 6 7)) '(5 6 7)))
  (is (EQUAL (cons 5 '(list 6 7)) '(5 list 6 7)))
  (is (EQUAL (list 3 'from 9 'gives (- 9 3)) '(3 from 9 gives 6)))
  (is (EQUAL (+ (length '(1 foo 3 moo)) (third '(1 foo 2 moo))) 6))
  (is (EQUAL (rest '(cons is short for construct)) '(is short for construct))))

; exercise 3.10
; The following expression all result in errors. White down the type of
; error that occurs, explain how the error arose (for example, missing
; quote, quote in wrong place), and correct the expression by changing
; only the quote.

(test e-3-10-test
;  (is (EQUAL (third (the quick brown fox)) 'brown))
  (is (EQUAL (third '(the quick brown fox)) 'brown))
;  (is (EQUAL (list 2 and 2 is 4) '(2 and 2 is 4)))
  (is (EQUAL (list 2 'and 2 'is 4) '(2 and 2 is 4)))
;  (is (EQUAL (+ 1 '(Length (list t t t t))) 5))
  (is (EQUAL (+ 1 (Length (list t t t t))) 5))
;  (is (EQUAL (cons 'patrick (seymour marvin)) '(patrick seymour marvin)))
  (is (EQUAL (cons 'patrick '(seymour marvin)) '(patrick seymour marvin)))
;  (is (EQUAL (cons 'patrick (list seymour marvin)) '(patrick seymour marvin))))
  (is (EQUAL (cons 'patrick (list 'seymour 'marvin)) '(patrick seymour marvin))))

; exercise 3.11
; Define a predicate called LONGER_THAN that takes two lists as input
; and returns T if the first list is longer than the second.

(defun LONGER_THAN (n1 n2)
  (> (LENGTH n1) (LENGTH n2)))

(test e-3-11-test
  (is-false (LONGER_THAN '(A B C D) '(A B C D E)))
  (is-false (LONGER_THAN '(A B C D) '(A B C D )))
  (is-true (LONGER_THAN '(A B C D) '(A B C))))

; exercise 3.12
; Write a function ADDLENGTH that takes a list as input and returns a
; new list with the lengthof the unput added onto the front of it. If the
; input is (MOO GOO GAI PAN), the output should be (4 MOO GOO
; GAI PAN). What is the result of (ADDLENGTH (ADDLENGTH '(A B C)))?

(defun ADDLENGTH (n1)
  (cons (LENGTH n1) n1))

(test e-3-12-test
  (is (EQUAL (ADDLENGTH '(A B C)) '(3 A B C)))
  (is (EQUAL (ADDLENGTH (ADDLENGTH '(A B C))) '(4 3 A B C))))

; exercise 3.13
; Study this function defintion:

(defun call-up (caller callee)
  (list 'hello callee 'this 'is caller 'calling))

; How many argument does this function require? What are the 
; names of the arguments?  What is the result of (CALL-UP 'FRED 
; 'WANDA)?

(test e-3-13-test
  (is (EQUAL (CALL-UP 'FRED 'WANDA) '(HELLO WANDA THIS IS FRED CALLING))))

; exercise 3.14
; Here is a varitation on the CALL-UP function from the previous problem.  
; What is the result of (CRANK_CALL 'WANDA 'FRED)?

(defun crank-call (caller callee)
  '(hello callee this is caller calling))

(test e-3-14-test
  (is (EQUAL (crank-call 'WANDA 'FRED) '(hello callee this is caller calling))))

; 3.11 Four ways to misdefine a function

; 3.12 More about variables

; Lisp on the computer

; 3.13 Running Lisp

; > = top-level prompt

; Control characters
; Delete works like backspace

; 3.14 The read-eval-print loop

; 3.15 Recovering from errors
; Control-G
; Clozure cmd-.
; 

; exercise 3.22
; The exercise below may be done in any order.  What's most
; important is that you get comfortable with using the computer.
; You don't have to solve all of these problems; feel free 
; to experiment and improvise on your own if you like.

; a. Find out how to run Lisp on your computer, and start it up.

; b. For each following expression, write down what you think
; it evaluates to or what kind of error it will cause. Then try it
; on the computer and see.

; c. Here is an example of the fucntion MYFUN, a strange
; function of two inputs.

; 3 Advanced Topics

; 3.16 Functions of no arguments

(defun my-test ()
  (* 85 97))

(test e-3-16-test
  (is (EQUAL (my-test) 8245)))

; 3.17 The QUOTE special function

(test quote-function-test
  (is (EQUAL (QUOTE FOO) 'FOO))
  (is (EQUAL (QUOTE (hello world)) '(hello world)))
  (is (EQUAL ''FOO '(QUOTE FOO))))

; 3.18 Internal structure of symbols
; symbols consist of 5 pointers in memory
; 1 of 5 is name and points to the name of the symbol as a string
; 3 of 5 is function cell and points to compiled code object

(test symbol-test
  (is (EQUAL (SYMBOL-NAME 'equal) "EQUAL")))
 ; (is (EQUAL (SYMBOL-FUNCTION 'equal) #<Compiled-function EQUAL #x300000083FFF>)))

; 3.19 Lambda notation

(lambda (x) (+ 3 x))

(lambda (x y) (+ (* 3 x) (* y y)))

; exercise 3.23
; Write each of the following functions in Church's lambda notation.

(lambda (n) (+ n n))
(lambda (n) (* n n))
(lambda (n1 n2) (= n1 (+ n2 +1)))

; 3.20 Scope of variables

; exercise 3.24
; Assume we have defined the following functions:

(defun alpha (x)
  (bravo (+ x 2) (charlie x 1)))

(defun bravo (y z) (* y z))

(defun charlie (y x) (- y x))

(test e-3-24-test
  (is (EQUAL (alpha 3) 10.)))

; 3.21 Eval and apply

(test eval-apply-test
  (is (EQUAL (eval '(+ 2 2)) 4))
  (is (EQUAL (eval '''boing) ''boing))
  (is (EQUAL (eval (eval '''boing)) 'boing))
  (is (EQUAL (eval '(list '* 9 6)) '(* 9 6)))
  (is (EQUAL (eval (eval '(list '* 9 6))) 54))
  (is (EQUAL (apply #'+ '(2 3)) 5))
  (is-false (apply #'equal '(12 17)))
  (is (EQUAL (apply #'cons '(as (you like it))) '(as you like it))))


 














  
 






  




 