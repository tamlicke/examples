; tcp-sockets.lisp

; requires
; (ql:quickload "usocket")

(defun create-server (port)
  (let* ((socket (usocket:socket-listen "127.0.0.1" port))
	 (connection (usocket:socket-accept socket :element-type '(unsigned-byte 8))))
    (unwind-protect
        (progn
	      (format (usocket:socket-stream connection) "Hello World~%")
	      (force-output (usocket:socket-stream connection)))
      (progn
	    (format t "Closing sockets~%")
	    (usocket:socket-close connection)
        (usocket:socket-close socket)))))

(defun create-client (port)
  (usocket:with-client-socket (socket stream "127.0.0.1" port :element-type '(unsigned-byte 8))
    (unwind-protect
         (progn
           (usocket:wait-for-input socket)
           (format t "Input is: ~a~%" (read-line stream)))
      (usocket:socket-close socket))))

