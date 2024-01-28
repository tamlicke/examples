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



;(c)
; Throwing two ones is called "snake eyes"; two sixes is called
; "boxcars."  Write predicates SNAKE-EYES-P and BOXCARS-P
; that take a throw as input and return T if the throw is equal to (1 1)
; or (6 6), respectively.

(defun SNAKE-EYE-P (throw)
  (if (AND (EQUAL (CAR throw) 1) (EQUAL (CADR throw) 1)) T nil))

(defun BOXCARS-P (throw)
  (if (AND (EQUAL (CAR throw) 6) (EQUAL (CADR throw) 6)) T nil))



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
 
; (g)
; Once a point has been established, you continue throwing the dice
; until you either win by making the point again or lose by throwing a
; 7.  Write the function TRY-FOR-POINT that simulates this part of
; the game, as follows:

; > (try-for-point 6)
; (THROW 3 AND 5 -- 8 -- THROW AGAIN)

; > (try-for-point 6)
; (THROW 5 AND 1 -- 6 -- YOU wIN)

; > (craps)
; (THROW 3 AND 6 -- YOUR POINT IS 9)

; > (try-for-point 9)
; (THROW 6 AND 1 -- 7 -- YOU LOSE)

(defun TRY-FOR-POINT (point)
  "Try roll point without rolling 7"
  (let ((throw (throw-dice)))
    (cond ((equal point (say-throw throw)) `( THROW ,(car throw) AND ,(cadr throw) -- ,(say-throw throw) -- YOU WIN))
          ((equal 7  (say-throw throw))  `( THROW ,(car throw) AND ,(cadr throw) -- ,(say-throw throw) -- YOU LOSE))
          (T `( THROW ,(car throw) AND ,(cadr throw) -- ,(say-throw throw) -- THROW AGAIN)))))

  
