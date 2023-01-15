(in-package :cl-user)
(defpackage my-fiveam-test
  (:use :cl
        :fiveam))
(in-package :my-fiveam-test)

(def-suite my-system
  :description "Test my system")

;; Define a suite and set it as the default for the following tests.
(def-suite read-file-as-string
  :description "Test the read-file-as-string function."
  :in my-system)
(in-suite read-file-as-string)

;; Alternatively, the following line is a combination of the 2 lines above.
; (def-suite* read-file-as-string :in my-system)

;; Our first "base" case: we read a file that contains "hello".
(test read-file-as-string-normal-file
  (let ((result (read-file-as-string "/tmp/hello.txt")))
    ;; Tip: put the expected value as the first argument of = or equal, string= etc.
    ;; FiveAM generates a more readable report following this convention.
    (is (string= "hello" result))))

;; We read an empty file.
(test read-file-as-string-empty-file
  (let ((result (read-file-as-string "/tmp/empty.txt")))
    (is (not (null result)))
    ;; The reason can be used to provide formatted text.
    (is (= 0 (length result)))
        "Empty string expected but got ~a" result))

;; Now we test that reading a non-existing file signals our condition.
(test read-file-as-string-non-existing-file
  (let ((result (read-file-as-string "/tmp/non-existing-file.txt"
                                     :error-if-not-exists nil)))
    (is (null result)
      "Reading a file should return NIL when :ERROR-IF-NOT-EXISTS is set to NIL"))
  ;; SIGNALS accepts the unquoted name of a condition and a body to evaluate.
  ;; Here it checks if FILE-NOT-EXISTING-ERROR is signaled.
  (signals file-not-existing-error
    (read-file-as-string "/tmp/non-existing-file.txt"
                         :error-if-not-exists t)))

