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

