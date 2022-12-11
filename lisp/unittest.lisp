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

