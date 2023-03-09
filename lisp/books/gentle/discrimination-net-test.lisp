; discrimination-net-test.lisp


(in-package :cl-user)
(defpackage discrimination-net-test
  (:use :cl
        :fiveam))
(in-package :discrimination-net-test)

(load "/Users/tamlicke/projects/examples/lisp/books/gentle/discrimination-net.lisp")

(test make-node-test
  (let ((n1 (make-node)))
    (is (equalp
      n1
      '#s(node name nil
               question nil
               yes-case nil
               no-case nil)))))

(test init-node-list-test
  (init-node-list)
  (is (equal
    *NODE-LIST*
    nil)))

(test add-node-test
  (init-node-list)
  (is (equal
    *NODE-LIST*
    nil))
  (is (equal 
     (add-node '#s(node name a
                     question b
                     yes-case c
                     no-case d))
     'a))
  (is (equal 
    (length *NODE-LIST*)
    1))
  (let ((my-node (car *NODE-LIST*)))
    (is-true (node-p my-node))))

(test add-node-bad-input-test
  (is (equal
    (add-node '(a b c))
    '(not a valid node))))

  



