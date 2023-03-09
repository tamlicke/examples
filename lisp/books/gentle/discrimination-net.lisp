; discrimination-net.lisp

; A discrimination net are networks of yes and no questions used for problem solving tasks.

; node

(defstruct node
  "discrimination net node has a name, a yes no question, a yes case, and no case."
  (name nil)
  (question nil)
  (yes-case nil)
  (no-case nil))

; Node list global variable
; holds all nodes in the discrimination net
(setf *NODE-LIST* nil)

; Initialize node list
; Allows the global variable to be cleared
(defun init-node-list ()
  (setf *NODE-LIST* nil))


; add node
; adds a node to the *NODE-LIST* if it is a valid node
; returns node name if successful
; return (not a valid node) if not successful
(defun add-node (x)
  "add node to the discrimination net"
  (if (node-p x)
    (progn
      (setf *NODE-LIST* (append *NODE-LIST* (list x)))
      (node-name x))
    '(not a valid node)))

; find node
; takes a node name as input and returns the node if it
; is present in the discrimination net, otherwise
; returns nil
(defun find-node (x)
  "find a node in the discrimination net"
  (mapcar (lambda (n) (
