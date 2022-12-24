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

; exercise 1.21
; What is wrong with each of these functions?
; -->ZEROP --> ADD1 -->
;
; ---> + --> EQUAL ==>
; -->/
;
; ---> NOT --> SYMBOLP -->
; -->/
  
(defun ZEROP-ADD1 (n1)
  
  (ADD1 (ZEROP n1)))

;(defun PLUS-EQUAL (n1 n2)
;  (EQUAL (+ n1 n2)))

;(defun NOT-SYMBOLP (n1 n2)
;  (SYMBOLP (NOT n1 n2)))

(test wrong-functions
;  (is (= (ZEROP-ADD1 1) 1))
  (signals type-error (ZEROP-ADD1 1))
;  (is-true (PLUS-EQUAL 0 1))
 ; (is-true (NOT-SYMBOLP T T))
)

; exercise 1.22
; Are all predicates functions?
; Yes
;
; Are all functions predicates?
; No

; exercise 1.23
; Which build-in predicates introduced in this change have
; names that do not end in "P"?
; EQUAL
; NOT
; AND
; OR
; <
; >

; exercise 1.24
; Is NUMBER a number?
; No
;
; Is SYMBOL a symbol?
; Yes

; exercise 1.25
; Why is FALSE true in Lisp?
; FALSE is a symbol and all symbols other than nil are true

; exercise 1.26
; True or false;
; (a) All predicates accept T or NIL as input?
; false 
; (b) all predicates produce T or NIL as output
; true

; exercise 1.27
; Give an example of the use of EVENP that would cause a 
; wrong-type-input-error.
; (EVENP nil)
;
; Give an example that would cause a wrong-number-of-inputs error.
; (NO

;======================Chapter 2. Lists=============================

; exercise 2.1
; Show how the list (TO BE OR NOT TO BE) would be represented
; in computer memory by drawing its cons cell representation.

; Length examples
(test length-test
  (is (= (LENGTH '(RED GREEN BLUE)) 3))
  (is (= (LENGTH '((BLUE SKY) (GREEN GRASS) (BROWN EARTH))) 3))
  (is (= (LENGTH '(A (B X Y Z) C)) 3))
  (is (= (LENGTH '(FOO 937 (GLEEP GLORP))) 3))
  (is (= (LENGTH '(ROY (TWO WHITE DUCKS) ((MELTED) (BUTTER))))))
)

(test nil-list-test
  (is (= (LENGTH '(A nil B)) 3))
  (is (= (LENGTH nil) 0 ))
  (is (= (LENGTH 'nil) 0 ))
  (is (= (LENGTH ()) 0))
  (is (= (LENGTH '()) 0))
)

(test compare-lists
  (is-false (EQUAL '(A (B C) D) '(A B (C D)))))

(test first-second-third-rest-test
  (is (EQUAL (FIRST '(A B C D)) 'A))
  (is (EQUAL (SECOND '(A B C D)) 'B))
  (is (EQUAL (THIRD '(A B C D)) 'C))
  (signals type-error (is (EQUAL (FIRST 'KAZOO) 'KAZOO)))
  (is (EQUAL (REST '(A B C D)) '(B C D)))
  (is (EQUAL (REST (REST '(A B C D))) '(C D))))

(defun MY-SECOND (n1)
  (FIRST (REST n1)))

(test my-second-test
  (is (EQUAL (MY-SECOND '(PENGUINS LOVE ITALIAN ICES)) 'LOVE)))

; exercise 2.7
; What goes on inside the MY-SECOND box when it is given the
; input (HONK IF YOU LIKE GEESE)?

(test another-my-second-test
  (is (EQUAL (MY-SECOND '(HONK IF YOU LIKE GEESE)) 'IF)))

; exercise 2.8
; Show how to write MY-THIRD using FIRST and two RESTs.

(defun MY-THIRD (n1)
  (FIRST (REST (REST n1))))

(test my-third-test
  (is (EQUAL (MY-THIRD '(HONK IF YOU LIKE GEESE)) 'YOU)))

; exercise 2.9
; Show how to write MY-THIRD using SECOND.

(defun MY-THIRD-ALT (n1)
  (SECOND (REST n1)))

(test my-third-test-alt
  (is (EQUAL (MY-THIRD-ALT '(HONK IF YOU LIKE GEESE)) 'YOU)))


; == CAR and CDR

(test car-cdr-test
  (is (EQUAL (CAR '(THE BIG BOPPER)) 'THE))
  (is (EQUAL (CDR '(THR BIG BOPPER)) '(BIG BOPPER)))
  (is (EQUAL (CAR '(AARDVARK)) 'AARDVARK))
  (is-false (CDR '(AARDVARK)))
  (is (EQUAL (CAR '((PHONE HOME))) '(PHONE HOME)))
  (is-false (CDR '((PHONE HOME)))))

; exercise 2.10
; Draw the cons cell representation of the list (((PHONE 
; HOME))), which has three levels of parentheses.  
; What is the CAR of the list?
; What is the CDR?

(test phone-home-test
  (is (EQUAL (CAR '(((PHONE HOME)))) '((PHONE HOME))))
  (is-false (CDR '(((PHONE HOME)))))) 

; exercise 2.11
; Draw the cons cell representation of the list (A (TOLL)
; ((CALL))).

(test a-toll-call-test
  (is (EQUAL (CAR '(A (TOLL) ((CALL)))) 'A))
  (is (EQUAL (CDR '(A (TOLL) ((CALL)))) '((TOLL) ((CALL))))))

; Combinations of CAR and CDR

(test combo-car-cdr-test
  (is (EQUAL (CAR (CDR '(FEE FIE FOE FUM))) 'FIE))
  (is (EQUAL (CADR '(FEE FIE FOE FUM)) 'FIE))
  (signals type-error (is (EQUAL (CDAR '(FEE FIE FOE FUM)) 'FIE)))
  (is (EQUAL (CDAR '((FEE FIE) (FOE FUM))) '(FIE)))
  (is (EQUAL (CADDR '(FEE FIE FOE FUM)) 'FOE)))

; Common Lisp provides built-in definitions for all combinations of CAR
; and CDR up to and including four As and Ds in the function namee. So
; CAADDR is built in, but not CAADDAR.

; Common Lisp also provides built-in definitions for FIRST through TENTH.


; exercise 2.12
; What C..R name does Lisp use for the function that returns
; the fourth element of a list?
; How would you pronounce it?

(test fie-fie-foe-fum-test
  (is (EQUAL (CADDDR '(fee fie foe fum)) 'fum)))

; CAR and CDR of Nested Lists

(test blue-cube-red-pyramid
  (is (EQUAL (CAR '((BLUE CUBE) (RED PYRAMID))) '(BLUE CUBE)))  
  (is (EQUAL (CAAR '((BLUE CUBE) (RED PYRAMID))) 'BLUE )) 
  (is (EQUAL (CADAR '((BLUE CUBE) (RED PYRAMID))) 'CUBE ))  
  (is (EQUAL (CAADR '((BLUE CUBE) (RED PYRAMID))) 'RED ))  
  (is (EQUAL (CDR '((BLUE CUBE) (RED PYRAMID))) '((RED PYRAMID)) ))  
  (is (EQUAL (CDDR '((BLUE CUBE) (RED PYRAMID))) nil ))  
  (is (EQUAL (CADR '((BLUE CUBE) (RED PYRAMID))) '(RED PYRAMID) ))  
  (is (EQUAL (CAADR '((BLUE CUBE) (RED PYRAMID))) 'RED )) 
  (is (EQUAL (CDADR '((BLUE CUBE) (RED PYRAMID))) '(PYRAMID) ))  
  (is (EQUAL (CADADR '((BLUE CUBE) (RED PYRAMID))) 'PYRAMID )))  

; exercise 2.13
; Write down tables to the one above to illustrate how to
; get each word in the list (((FUN)) (IN THE) (SUN)).

(test fun-in-the-sun-test
 (is (EQUAL (CAAAR '(((FUN)) (IN THE) (SUN))) 'FUN))
 (is (EQUAL (CAADR '(((FUN)) (IN THE) (SUN))) 'IN))
 (is (EQUAL (CADADR '(((FUN)) (IN THE) (SUN))) 'THE))
 (is (EQUAL (CAADDR '(((FUN)) (IN THE) (SUN))) 'SUN)))

; exercise 2.14
; What woudl happen if you tried to explain the operation of the
; CAADR function on the list ((BLUE CUBE) (RED PYRAMID)) by reading
; the As and Ds from left to right instead of from right to left?

(test caadr-reversed-test
  (is (EQUAL (CAADR '((BLUE CUBE) (RED PYRAMID))) 'RED))
  (is (EQUAL (CAAR '((BLUE CUBE) (RED PYRAMID))) 'BLUE)))

; exercise 2.15
; Using the list ((A B) (C D) (E F)), fill in the missing parts of this table
; Function     Result
; --------     ------
; CAR          (A B)
; CDDR         
; CADR
;              B
; CDDAR        
;              A
; CDADDR       
;              F

(test ab-cd-ef-test
  (is (EQUAL (CAR '((A B) (C D) (E F))) '(A B)))
  (is (EQUAL (CDDR '((A B) (C D) (E F))) '((E F))))
  (is (EQUAL (CADR '((A B) (C D) (E F))) '(C D)))
  (is (EQUAL (CDAR '((A B) (C D) (E F))) '(B)))
  (is (EQUAL (CADAR '((A B) (C D) (E F))) 'B))
  (is (EQUAL (CDDAR '((A B) (C D) (E F))) nil))
  (is (EQUAL (CAAR '((A B) (C D) (E F))) 'A))
  (is (EQUAL (CDADDR '((A B) (C D) (E F))) '(F)))
  (is (EQUAL (CAR (CDADDR '((A B) (C D) (E F)))) 'F)))

; exercise 2.16
; What does CAAR do when given the input (FRED NIL)?

(test fred-nil-test
  (signals type-error (is (EQUAL (CAAR '(FRED NIL)) nil))))

; CAR and CDR of NIL

(test car-cdr-nil-test
  (is (EQUAL (CAR nil) nil))
  (is (EQUAL (CDR nil) nil))
  (is (EQUAL (THIRD '(DING ALING)) nil)))

; exercise 2.17
; Fill in the results of the following computations.

(test post-no-bills-test
  (is (EQUAL (CAR '(POST NO BILLS)) 'POST))
  (is (EQUAL (CDR '(POST NO BILLS)) '(NO BILLS)))
  (is (EQUAL (CAR '((POST NO) BILLS)) '(POST NO)))
  (is (EQUAL (CDR '(BILLS)) nil))
  (is (EQUAL (signals type-error (CAR 'BILLS)) T))
  (is (EQUAL (CDR '(POST (NO BILLS))) '((NO BILLS))))
  (is (EQUAL (CDR '((POST NO BILLS))) nil))
  (is (EQUAL (CAR nil) nil)))

; CONS
; CONS = Construct

(test cons-test
  (is (EQUAL (CONS 'A '(B C D)) '(A B C D)))
  (is (EQUAL (CONS 'SINK '(OR SWIM)) '(SINK OR SWIM))))

(defun GREET (n1)
  (CONS 'HELLO n1))

(test greet-test
  (is (EQUAL (GREET '(PROFESSOR HIGGINS)) '(HELLO PROFESSOR HIGGINS)))
  (is (EQUAL (GREET '(THERE MISS DOLITTLE)) '(HELLO THERE MISS DOLITTLE))))

; CONS and the Empty List

(test cons-empty-list-test
  (is (EQUAL (CONS 'FROB nil) '(FROB)))
  (is (EQUAL (CONS nil nil) '(nil)))
  (is (EQUAL (CONS '(PHONE HOME) nil) '((PHONE HOME)))))

; Building Nested Lists With CONS

(test nested-lists-with-cons-test
  (is (EQUAL (CONS '(FRED) '(AND GINGER)) '((FRED) AND GINGER)))  
  (is (EQUAL (CONS '(NOW IS) '(THE TIME)) '((NOW IS) THE TIME)))  
  (is (EQUAL (CONS '(NOW IS) 'TIME) '((NOW IS) . TIME))))  

; CONS Can Build Lists From Scratch

(test Cons-can-build-lists-from-scratch-test
  (is (EQUAL (CONS 'BAZ nil) '(BAZ)))
  (is (EQUAL (CONS 'BAR '(BAZ)) '(BAR BAZ)))
  (is (EQUAL (CONS 'BAR 'BAZ) '(BAR . BAZ)))
  (is (EQUAL (CONS 'FOO '(BAR BAZ)) '(FOO BAR BAZ))))

; exercise 2.18
; Write a function that takes any two inputs and makes a list of them using CONS.

(defun MY-MAKE-LIST (n1 n2)
  (CONS n1 (CONS n2 nil)))

(test my-make-list-test
  (is (EQUAL (MY-MAKE-LIST 'FOO 'BAR) '(FOO BAR))))

; Symmetry of CONS and CAR/CDR
; x=CONS of (CAR of x) and (CDR of x)

; LIST

(test list-test
 (is (EQUAL (LIST 'FOO 'BAR 'BAZ) '(FOO BAR BAZ)))
 (is (EQUAL (LIST 'FOO) '(FOO)))
 (is (EQUAL (LIST '(FOO)) '((FOO))))
 (is (EQUAL (LIST 'FOO 'BAR) '(FOO BAR)))
 (is (EQUAL (LIST 'SUN nil) '(SUN nil)))
 (is (EQUAL (LIST '(FROB)) '((FROB))))
 (is (EQUAL (LIST 'A '(B C) 'D) '(A (B C) D)))
 (is (EQUAL (LIST nil) '(nil))))

(defun BLURT (n1 n2)
  (LIST n1 'IS 'A n2))

(test blurt-test
 (is (EQUAL (BLURT 'MIKE 'NERD) '(MIKE IS A NERD))))

(test list-cons-test
  (is (EQUAL (CONS 'ZORT nil) '(ZORT)))
  (is (EQUAL (LIST 'ZORT nil) '(ZORT nil)))
  (is (EQUAL (CONS 'ABLE '(BAKER CHARLIE)) '(ABLE BAKER CHARLIE)))
  (is (EQUAL (LIST 'ABLE '(BAKER CHARLIE)) '(ABLE (BAKER CHARLIE)))))

(defun MY-LIST (n1 n2)
  (CONS n1 (CONS n2 nil)))
  

(test build-list-from-cons-test
  (is (EQUAL (LIST 'COCKATOO 'REVIEW) (MY-LIST 'COCKATOO 'REVIEW))))
 
; 2.19
; Fill in the results of the following computations

(test list-cons-exercise-test
  (is (EQUAL (LIST 'FRED 'AND 'WILMA) '(FRED AND WILMA)))
  (is (EQUAL (LIST 'FRED '(AND WILMA)) '(FRED (AND WILMA))))
  (is (EQUAL (CONS 'FRED '(AND WILMA)) '(FRED AND WILMA)))
  (is (EQUAL (CONS nil nil) '(nil)))
  (is (EQUAL (LIST nil nil) '(nil nil))))

; Replacing the first element of a list

(defun SAY-WHAT (n1)
  (CONS 'WHAT (REST n1)))

(test say-what-test
  (is (EQUAL (SAY-WHAT '(RIGHT SAID FRED)) '(WHAT SAID FRED)))
  (is (EQUAL (SAY-WHAT '(RIGHT SAID FRED)) '(WHAT SAID FRED)))
  (is (EQUAL (SAY-WHAT '(TAKE A NAP)) '(WHAT A NAP))))

; exercise 2.20
; What results are returned by the following?

(test more-list-cons-test
  (is (EQUAL (LIST nil) '(nil)))
  (is (EQUAL (LIST t nil) '(T nil)))
  (is (EQUAL (CONS t nil) '(T)))
  (is (EQUAL (CONS '(t) nil) '((T))))
  (is (EQUAL (LIST '(IN ONE EAR AND) '(OUT THE OTHER)) '((IN ONE EAR AND)(OUT THE OTHER))))
  (is (EQUAL (CONS '(IN ONE EAR AND) '(OUT THE OTHER)) '((IN ONE EAR AND) OUT THE OTHER))))

; exercie 2.21
; Write a function that takes four inputs and returns a two-element
; nested list.  The first element shoudl be a list of the first two inputs,
; and the second element a list of the last two inputs.

(defun MY-2-ELEMENT-LIST (n1 n2 n3 n4)
  (LIST (LIST n1 n2) (LIST n3 n4)))

(test my-2-element-list-test
  (is (EQUAL (MY-2-ELEMENT-LIST 'A 'B 'C 'D) '((A B)(C D)))))

; exercise 2.22 
; Suppore we wanted to make a function called DUO-CONS that
; added two elements to the frront of a list. Remember that the regular
; CONS function adds only one element to a list. DUO-CONS would
; be a function of three inputs. For example, if the inputs were the
; symbol PATRICK, the symbok SEYMOUR, and the list (MARVIN),
; DUO-CONS would return the list (PATRICK SEYMOUR MARVIN).
; Show how to write the DUO-CONS function.

(defun DUO-CONS (n1 n2 n3)
   (CONS n1 (CONS n2 n3)))

(test duo-cons-test
  (is (EQUAL (DUO-CONS 'PATRICK 'SEYMOUR '(MARVIN)) '(PATRICK SEYMOUR MARVIN))))

; exercie 2.23
; TWO-DEEPER is a function that surrounds its input with two levels
; of parentheses.  TWO-DEEPER of MOO is ((MOO)). TWO-DEEPER
; of (BOW WOW) is (((BOW WOW))). Show how to write TWO-
; DEEPER using LIST. Write another version using CONS

(defun TWO-DEEPER (n1)
  (LIST (LIST n1)))

(defun ALT-TWO-DEEPER (n1)
  (CONS (CONS n1 nil) nil))

(test two-deeper-test
  (is (EQUAL (TWO-DEEPER 'MOO) '((MOO))))
  (is (EQUAL (ALT-TWO-DEEPER 'MOO) '((MOO))))
  (is (EQUAL (TWO-DEEPER '(BOW WOW)) '(((BOW WOW)))))
  (is (EQUAL (ALT-TWO-DEEPER '(BOW WOW)) '(((BOW WOW))))))

; exercises 2.24
; What built-in Lisp function would extract the symbol NIGHT from
; the list (((GOOD)) ((NIGHT)))?

(test good-night-test
  (is (EQUAL (CAAADR '(((GOOD))((NIGHT)))) 'NIGHT)))

; List Predicates

(test list-predicate-test
  (is-false (LISTP 'STICH))
  (is-true (LISTP '(A STITCH IN TIME)))
  (is-true (LISTP nil))
  (is-false (CONSP nil))
  (is-true (ATOM nil))
  (is-true (ATOM 18))
  (is-true (ATOM 'GOLF))
  (is-false (ATOM '(HOLE IN ONE)))
  (is-true (NULL nil))
  (is-false (NULL T)))

; exercise 2.25
; Why do cons cells and the CONS function share the same name?
; CONS creates a cons cell

; exercise 2.26
; What do these two functions do when given the input (ABC)?

(defun CDR-LENGTH (n1)
  (LENGTH (CDR n1)))

(defun LENGTH-CDR (n1)
  (CDR (LENGTH n1)))

(test cdr-length-test
  (is (EQUAL (CDR-LENGTH nil) 0))
  (is (EQUAL (CDR-LENGTH ()) 0))
;  (is (EQUAL (CDR-LENGTH T) 1))
;  (is (EQUAL (CDR-LENGTH 'FRED) 1))
  (is (EQUAL (CDR-LENGTH '(FRED)) 0))
  (is (EQUAL (CDR-LENGTH '(FRED JOE)) 1))
  (is (EQUAL (CDR-LENGTH '(FRED JOE GEORGE)) 2)))

; exercise 2.27
; When does the internal representation of a list involve more cons 
; cells than the list has elements?
;
; When is has nested lists

; exercise 2.28
; Using just CAR and CDR, is it possible to write a function that returns
; the last element of a list, no matter how long the list is?
;
; yes, you can have infinite CDRs followed by a CAR to get the last element of a list.

; Unary arithmetic with lists

; exercise 2.29
; Write a function UNART-ADD 1 that increases a unary number by one.

(defun UNARY-ADD1 (n1)
  (CONS 'X n1))

(test unary-add1-test
  (is (EQUAL (UNARY-ADD1 nil) '(X)))
  (is (EQUAL (UNARY-ADD1 '(X)) '(X X)))
  (is (EQUAL (UNARY-ADD1 '(X X)) '(X X X))))

; exercise 2.30
; What does the CDDR function do to unary numbers?

(defun UNARY-SUB2 (n1)
  (CDDR n1))

(test unary-sub2-test
  (is (EQUAL (UNARY-SUB2 '(X X X X X)) '(X X X)))
  (is (EQUAL (UNARY-SUB2 '(X X X X)) '(X X )))
  (is (EQUAL (UNARY-SUB2 '(X X X)) '(X )))
  (is (EQUAL (UNARY-SUB2 '(X X)) nil)))

; exercise 2.31
; Write a UNARY-ZEROP predicate

(defun UNARY-ZEROP (n1)
  (ZEROP (LENGTH n1)))

(test unary-zerop-test
  (is-false (UNARY-ZEROP '(X X)))
  (is-false (UNARY-ZEROP '(X )))
  (is-true (UNARY-ZEROP '())))

; exercise 2.32
; Write a UNARY-GREATERP predicate, analogous to the > predicate
; ordinary numbers.
(defun UNARY-GREATERP (n1 n2)
  (> (LENGTH n1) (LENGTH n2)))

(test unary-greater-test
  (is-true (UNARY-GREATERP '(X X X) '(X X)))
  (is-true (UNARY-GREATERP '(X X ) '(X)))
  (is-true (UNARY-GREATERP '(X) '()))
  (is-false (UNARY-GREATERP '(X X X) '(X X X)))
  (is-false (UNARY-GREATERP '(X X ) '(X X)))
  (is-false (UNARY-GREATERP '(X) '(X)))
  (is-false (UNARY-GREATERP '() '()))
  (is-false (UNARY-GREATERP '(X X) '(X X X)))
  (is-false (UNARY-GREATERP '(X) '(X X)))
  (is-false (UNARY-GREATERP '() '(X))))

; exercise 2.33
; CAR can be viewed as a predicate on unary numbers. Instead of 
; retruning T or NIL, CAR returns X or NIL.  remember that X or any 
; other non-NIL object is taken as true in Lisp.  What question about a 
; unary number does CAR answer?

(defun UNARY-MORE-THAN-ONEP (n1)
  (CAR n1))

(test unary-more-than-onep-test
  (is-true (UNARY-MORE-THAN-ONEP '(X)))
  (is-true (UNARY-MORE-THAN-ONEP '(X X)))
  (is-false (UNARY-MORE-THAN-ONEP '())))

 



