; 28 December 2022
; Conditionals
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
  "Compute the average value of x and y"
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
; Rewrite function POOR-STYLE to create a new local variable Q using
; LET, instead of using  SETF to change P. Call your new function
; GOOD-STYLE.

(defun GOOD-STYLE (p)
  (let ((Q (+ p 8)))
     (list 'result 'is Q)))

(test good-style-test
  (is (equal 
        (GOOD-STYLE 5)
        '(RESULT IS 13))))

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
  (let*  ((biggest (max x y z))
         (smallest (min x y z))
         (r (/ biggest smallest 1.0)))
    (list 'factor 'of r)))

(test faulty-size-range-test 
  (is (equal (faulty-size-range 35 87 4) '(factor of 21.75))))

; exercise 5.2
; What is a size effect?
; Anything other than returning a value from a function.

; exercise 5.3
; What is the different between a local and global variable?
; A local variables is defined in the context of a function or a let/let* macro funciont

; exercise 5.4
; Why must SETF is a macro instead of a function?
; The first parameter of the SETF is not evaluated and instead is the label used to associate with a global function

; execise 5.5
; Are LET and LET* equivalent when defining one variable?
;
; Yes,  they both create a lexical context after creating a single variable.

; exercise 5.6
; This keyboard exercise is about dice. We will start with a function to
; throw one die and end up with a program to play craps.  Be sure to
; include a documentation string for each function you write.

; (a)
; Write a function THROW-DIE returns a randow number from 1
; to 6 inclusive. Remember that (RANDOM 6) will pick numbers
; from 0 to 5.  THROW-DIE doesn't neeed any inputs, so its argument
; list should be NIL.
(defun THROW-DIE nil
  "Throw a six-sided die"
  (+ (random 6) 1))

(test throw-die-test
  (let ((ones 0)
        (twos 0)
        (threes 0)
        (fours 0)
        (fives 0)
        (sixes 0))
    (dotimes (i 100)
      (let ((throw (throw-die)))
        (is (> throw 0))
        (is (< throw 7))
        (cond ((= throw 1) (setf ones (+ ones 1)))
              ((= throw 2) (setf twos (+ twos 1)))
              ((= throw 3) (setf threes (+ threes 1)))
              ((= throw 4) (setf fours (+ fours 1)))
              ((= throw 5) (setf fives (+ fives 1)))
              (T (setf sixes (+ sixes (+ sixes 1))))
        )))
    (list ones twos threes fours fives sixes)))

(defun  throw-die-histogram ()
  (let ((ones 0)
        (twos 0)
        (threes 0)
        (fours 0)
        (fives 0)
        (sixes 0))
    (dotimes (i 100)
      (let ((throw (throw-die)))
        (cond ((= throw 1) (setf ones (+ ones 1)))
              ((= throw 2) (setf twos (+ twos 1)))
              ((= throw 3) (setf threes (+ threes 1)))
              ((= throw 4) (setf fours (+ fours 1)))
              ((= throw 5) (setf fives (+ fives 1)))
              (T (setf sixes (+ sixes 1))))
        ))
    (list ones twos threes fours fives sixes)))
        
;(b)
; Write a function THROW-DICE that throws two die and returns a 
; list of two numbers; the value of the first die and the value of the
; second. We'll call this list a "throw." For example, (THROW-
; DICE) might return the throw (3 5), indicating that the first die was 
; a 3 and the second a 5.

(defun THROW-DICE ()
  (list (throw-die) (throw-die)))

(test throw-dice-test
  (dotimes (i 100)
    (let ((throw (throw-dice)))
        (is (> (car throw) 0))
        (is (< (car throw) 7))
        (is (> (cadr throw) 0))
        (is (< (cadr throw) 7)))))

;(c)
; Throwing two ones is called "snake eyes"; two sixes is called
; "boxcars."  Write predicates SNAKE-EYES-P and BOXCARS-P
; that take a throw as input and return T if the throw is equal to (1 1)
; or (6 6), respectively.

(defun SNAKE-EYE-P (throw)
  (if (AND (EQUAL (CAR throw) 1) (EQUAL (CADR throw) 1)) T nil))

(defun BOXCARS-P (throw)
  (if (AND (EQUAL (CAR throw) 6) (EQUAL (CADR throw) 6)) T nil))

(test snake-eye-p-test 
   (is-true (snake-eye-p '(1 1)))
   (is-false (snake-eye-p '(1 3)))
   (is-false (snake-eye-p '(3 1)))
   (is-true (boxcars-p '(6 6)))
   (is-false (snake-eye-p '(6 3)))
   (is-false (snake-eye-p '(3 6))))

; (d)
; In playing craps, the first throw of the dice is crucial.  A throw of 7
; or 11 is an instant win.  A throw of 2, 3, or 12 is an instant loss
; (American casino rules).  Write predicates INSTANT-WIN-P and 
; INSTANT-LOSS-P to detect these conditions.  Each should take a 
; throw as input.

(defun instant-win-p (throw)
  "7 or 11 is instant loss"
  (let ((sum (+ (car throw) (cadr throw))))
    (cond ( (= sum 7) T)
          ( (= sum 11) t)
          ( T nil))))

(defun instant-loss-p (throw)
  "2, 3, or 12 is instant loss"
  (let ((sum (+ (car throw) (cadr throw))))
    (cond ( (= sum 2) T)
          ( (= sum 3) T)
          ( (= sum 12) t)
          ( T nil))))

(test instant-win-p-test
  (is-true (instant-win-p '(3 4)))
  (is-true (instant-win-p '(6 5)))
  (is-false (instant-win-p '(1 1 ))))

(test instant-loss-p-test
  (is-true (instant-loss-p '(1 1)))
  (is-true (instant-loss-p '(2 1)))
  (is-true (instant-loss-p '(6 6 )))
  (is-false (instant-loss-p '(3 4))))

; (e)
; Write a function SAY-THROW that takes a throw as input and
; returns either the sumof the two dice or the symbol SNAKE-EYES
; or BOXCARS if the sum is 2 or 12. (SAY-THROW '(3 4)) should
; return 7. (SAY-THROW '(6 6)) should return BOXCARS.

(defun SAY-THROW (throw)
  "returns symbols: SNAKE-EYES for (1 1) and BOXCARS for (6 6) otherwise returns the sum of the two numbers"
  (let ((sum (+ (car throw) (cadr throw))))
    (cond ((= sum 2) 'SNAKE-EYES)
          ((= sum 12) 'BOXCARS)
          (T sum))))

(test say-throw-test 
  (is (equal (say-throw '(1 1)) 'SNAKE-EYES))
  (is (equal (say-throw '(6 6)) 'BOXCARS))
  (is (equal (say-throw '(1 3)) 4)))

; (f)
; If you don't win or lose on the first throw of the dice, the value you
; threw becomes your "point," which you will be explained shortly.
; Write a function (CRAPS) that produces the follow sort of 
; behavior. Your solution should make use of the functions you wrote
; in previous steps.

; > (CRAPS)
; (THROW 1 AND 1 -- SNAKE-EYES -- YOU LOSE)

; > (CRAPS)
; (THROW 3 AND 4 -- 7 -- YOU WIN)

; > (craps)
; (THROW 2 AND $ -- YOUR POINT IS 6)

(defun CRAPS ()
  "Play craps"
  (let ((throw (throw-dice)))
    (cond ((instant-win-p throw) `( THROW ,(car throw) AND ,(cadr throw) -- ,(say-throw throw) -- YOU WIN))
          ((instant-loss-p throw)  `( THROW ,(car throw) AND ,(cadr throw) -- ,(say-throw throw) -- YOU LOSE))
          (T `( THROW ,(car throw) AND ,(cadr throw) -- YOUR POINT IS ,(say-throw throw))))))
 
  
