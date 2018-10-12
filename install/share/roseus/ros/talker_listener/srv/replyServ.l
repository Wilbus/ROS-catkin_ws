;; Auto-generated. Do not edit!


(when (boundp 'talker_listener::replyServ)
  (if (not (find-package "TALKER_LISTENER"))
    (make-package "TALKER_LISTENER"))
  (shadow 'replyServ (find-package "TALKER_LISTENER")))
(unless (find-package "TALKER_LISTENER::REPLYSERV")
  (make-package "TALKER_LISTENER::REPLYSERV"))
(unless (find-package "TALKER_LISTENER::REPLYSERVREQUEST")
  (make-package "TALKER_LISTENER::REPLYSERVREQUEST"))
(unless (find-package "TALKER_LISTENER::REPLYSERVRESPONSE")
  (make-package "TALKER_LISTENER::REPLYSERVRESPONSE"))

(in-package "ROS")





(defclass talker_listener::replyServRequest
  :super ros::object
  :slots (_numreq _messagereq ))

(defmethod talker_listener::replyServRequest
  (:init
   (&key
    ((:numreq __numreq) 0)
    ((:messagereq __messagereq) "")
    )
   (send-super :init)
   (setq _numreq (round __numreq))
   (setq _messagereq (string __messagereq))
   self)
  (:numreq
   (&optional __numreq)
   (if __numreq (setq _numreq __numreq)) _numreq)
  (:messagereq
   (&optional __messagereq)
   (if __messagereq (setq _messagereq __messagereq)) _messagereq)
  (:serialization-length
   ()
   (+
    ;; int64 _numreq
    8
    ;; string _messagereq
    4 (length _messagereq)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _numreq
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _numreq (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _numreq) (= (length (_numreq . bv)) 2)) ;; bignum
              (write-long (ash (elt (_numreq . bv) 0) 0) s)
              (write-long (ash (elt (_numreq . bv) 1) -1) s))
             ((and (class _numreq) (= (length (_numreq . bv)) 1)) ;; big1
              (write-long (elt (_numreq . bv) 0) s)
              (write-long (if (>= _numreq 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _numreq s)(write-long (if (>= _numreq 0) 0 #xffffffff) s)))
     ;; string _messagereq
       (write-long (length _messagereq) s) (princ _messagereq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _numreq
#+(or :alpha :irix6 :x86_64)
      (setf _numreq (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _numreq (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _messagereq
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _messagereq (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass talker_listener::replyServResponse
  :super ros::object
  :slots (_numresp _messageresp ))

(defmethod talker_listener::replyServResponse
  (:init
   (&key
    ((:numresp __numresp) 0)
    ((:messageresp __messageresp) "")
    )
   (send-super :init)
   (setq _numresp (round __numresp))
   (setq _messageresp (string __messageresp))
   self)
  (:numresp
   (&optional __numresp)
   (if __numresp (setq _numresp __numresp)) _numresp)
  (:messageresp
   (&optional __messageresp)
   (if __messageresp (setq _messageresp __messageresp)) _messageresp)
  (:serialization-length
   ()
   (+
    ;; int64 _numresp
    8
    ;; string _messageresp
    4 (length _messageresp)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _numresp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _numresp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _numresp) (= (length (_numresp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_numresp . bv) 0) 0) s)
              (write-long (ash (elt (_numresp . bv) 1) -1) s))
             ((and (class _numresp) (= (length (_numresp . bv)) 1)) ;; big1
              (write-long (elt (_numresp . bv) 0) s)
              (write-long (if (>= _numresp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _numresp s)(write-long (if (>= _numresp 0) 0 #xffffffff) s)))
     ;; string _messageresp
       (write-long (length _messageresp) s) (princ _messageresp s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _numresp
#+(or :alpha :irix6 :x86_64)
      (setf _numresp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _numresp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _messageresp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _messageresp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass talker_listener::replyServ
  :super ros::object
  :slots ())

(setf (get talker_listener::replyServ :md5sum-) "73bbf8063d124b838da0a702ede341b0")
(setf (get talker_listener::replyServ :datatype-) "talker_listener/replyServ")
(setf (get talker_listener::replyServ :request) talker_listener::replyServRequest)
(setf (get talker_listener::replyServ :response) talker_listener::replyServResponse)

(defmethod talker_listener::replyServRequest
  (:response () (instance talker_listener::replyServResponse :init)))

(setf (get talker_listener::replyServRequest :md5sum-) "73bbf8063d124b838da0a702ede341b0")
(setf (get talker_listener::replyServRequest :datatype-) "talker_listener/replyServRequest")
(setf (get talker_listener::replyServRequest :definition-)
      "int64 numreq
string messagereq
---
int64 numresp
string messageresp

")

(setf (get talker_listener::replyServResponse :md5sum-) "73bbf8063d124b838da0a702ede341b0")
(setf (get talker_listener::replyServResponse :datatype-) "talker_listener/replyServResponse")
(setf (get talker_listener::replyServResponse :definition-)
      "int64 numreq
string messagereq
---
int64 numresp
string messageresp

")



(provide :talker_listener/replyServ "73bbf8063d124b838da0a702ede341b0")


