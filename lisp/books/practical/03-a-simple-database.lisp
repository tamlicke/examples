; 08 March 2023
; A Simple Database
; Practical Common Lisp
; by Peter Seibel

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

; CDs and Records

(test cds-and-records-test
  (is (equal 
        (list 1 2 3)
        '(1 2 3)))
  (is (equal
        (list :a 1 :b 2 :c 3)
        '(:a 1 :b 2 :c 3)))
  (is (equal
        (getf (list :a 1 :b 2 :c 3) :a)
        1))
  (is (equal
        (getf (list :a 1 :b 2 :c 3) :c)
        3)))

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(test make-cd-test
  (is (equal
        (make-cd "Roses" "Kathy Mattea" 7 t)
        '(:title "Roses" :artist "Kathy Mattea" :rating 7 :ripped t)))) 

; Filing CDs

(defvar *db* nil)

(defun add-record (cd)
  (push cd *db*))

(test add-record
  (setf *db* nil)
  (is (equal
        (add-record (make-cd  "Roses" "Kathy Mattea" 7 t))
        '((:title "Roses" :artist "Kathy Mattea" :rating 7 :ripped t))))
  (is (equal
        (add-record (make-cd  "Fly" "Dixie Chicks" 8 t))
        '((:title "Fly" :artist "Dixie Chicks" :rating 8 :ripped t)
          (:title "Roses" :artist "Kathy Mattea" :rating 7 :ripped t)))))

         
  


