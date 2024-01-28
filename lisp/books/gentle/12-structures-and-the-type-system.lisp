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

; 12.3 Defining Structures

(defstruct starship
  (name nil)
  (speed 0)
  (condition 'green)
  (shields 'down))

(test ch12.3.1
  (let ((s1 (make-starship)))
    (is (equalp s1 '#s(starship :name nil
                                :speed 0
                                :condition green
                                :shields down)))))

(test ch12.3.2
  (let ((s1 (make-starship)))
    (handler-case (car s1)
      (type-error (c)
        (is-true t)))))

(test ch12.3.3
  (let ((s2 '#s(starship speed (warp 3)
                          condition red
                          shields up)))
    (is (equalp
      s2
      '#s(starship name nil
                   speed (warp 3)
                   condition red
                   shields up)))))

; 12.4 Type Predicates For Structures

(test ch12.4.1
  (let ((s2 '#s(starship speed (warp 3)
                          condition red
                          shields up)))
    (is-true (starship-p s2))
    (is-false (starship-p 'foo))))

(test ch12.4.2
    (let ((s1 (make-starship))
          (s2 '#s(starship speed (warp 3)
                          condition red
                          shields up)))
      (is-true (typep s1 'starship))
      (is (equal
        (type-of s2)
        'starship))))

; 12.5 Accessing and Modifying Structures
(test ch12.5.1
    (let ((s1 (make-starship))
          (s2 '#s(starship speed (warp 3)
                          condition red
                          shields up)))
      (is (equal 
        (starship-speed s2)
        '(warp 3)))
      (is (equal
        (starship-shields s2)
        'up))))

(test ch12.5.2
  (let ((s1 (make-starship)))
    (is (equalp
       s1
       '#s(starship name nil
                    speed 0
                    condition green
                    shields down)))
    (setf (starship-name s1) "Enterprise")
    (incf (starship-speed s1))
    (is (equalp
      s1
      '#s(starship name "Enterprise"
                    speed 1
                    condition green
                    shields down)))))

(defun alert (x)
  (setf (starship-shields x) 'up)
  (if (equal (starship-condition x) 'green)
    (setf (starship-condition x) 'yellow))
  'shields-raised)

(test ch12.5.3
  (let ((s1 '#s(starship name "Enterprise"
                    speed 1
                    condition green
                    shields down)))
    (is (equal
      (alert s1)
      'shields-raised))
    (is (equalp
      s1
      '#s(starship name "Enterprise"
                    speed 1
                    condition yellow
                    shields up)))))

; 12.6 Keyword Arguments To Construct Functions

(test 12.6.1
  (let ((s3 (make-starship :name "Reliant"
                           :shields 'damaged)))
    (is (equalp
      s3
      '#s(starship name "reliant"
                   speed 0
                   condition green
                   shields damaged)))))

; 12.7 Changing Structure Defintions


; Lisp Toolkit: DESCRIBE and INSPECT

(test lisp-toolkit1
  (is (equal
    (describe 7)
    nil)))





  



; Execise 12.1 Describe the roles of the symbols CAPTAIN, :CAPTAIN, and STARSHIP-CAPTAIN in the starship example.

(defstruct starship2
  (captain nil)
  (name nil)
  (shields 'down)
  (condition 'green)
  (speed 0))

(test exercise12.1
  (let ((ship (make-starship2 :captain "Benson"
                           :name "Reliant"
                           :shields 'damaged)))
    (is (equal
      (starship2-speed ship)
      0))))



                               



