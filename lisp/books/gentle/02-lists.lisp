(in-package :cl-user)
(defpackage my-fiveam-test
  (:use :cl
        :fiveam))
(in-package :my-fiveam-test)


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

; Nonlist CONS structures

(test non-list-cons-test
  (is (EQUAL (CONS 'A (CONS 'B '(C))) '(A B C)))
  (is (EQUAL (CONS 'A (CONS 'B (CONS 'C 'D))) '(A B C . D)))
  (is (EQUAL (CONS 'A 'B) '(A . B)))
  (is (EQUAL (CAR '(A . B)) 'A))
  (is (EQUAL (CDR '(A . B)) 'B))
  (is (EQUAL (CONS 'A (CONS 'B 'C)) '(A B . C))))

; dotted list '(A B C . D) 
; dotted pair '(A . B)

; exercise 2.34
; Write an expression involving cascaded calls to CONS to construct 
; the dotted list (A B C . D)

(test dotted-list-test
  (is (EQUAL (CONS 'a (CONS 'b (CONS 'c 'd))) '(a b c . d))))

; exercise 2.35
; Draw the dotted list ((A .C) (C . D)) in cos cel notation.  Write an
; expression to construct this list.

(test double-dotted-list-test
  (is (EQUAL (CONS (CONS 'A 'C) (CONS (CONS 'C 'D) ())) '((A . C) (C . D)))))

; CIRCULAR LISTS

(test circular-list-test
  (is (EQUAL (CAR '#1=(A B C . #1#)) 'A))
  (is (EQUAL (CADR '#2=(A B C . #2#)) 'B))
  (is (EQUAL (CADDR '#3=(A B C . #3#)) 'C))
  (is (EQUAL (CADDDR '#4=(A B C . #4#)) 'A))
  (is (EQUAL (CAR '#5=(A . #5#)) 'A))
  (is (EQUAL (CADR '#6=(A . #6#)) 'A))
  (is (EQUAL (CDR '#7=(#7# . A)) 'A)))

; Length of nonlist CONS structure

;(test nonlist-length-test
;  (is (= (LENGTH '(A B C . D)) 3)))
; does not work on Clozure

; The SDRAW Tool
; 
; SDRAW
; SDRAW-LOOP
; SCRAWL





  

 



