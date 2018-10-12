;; Auto-generated. Do not edit!


(when (boundp 'talker_listener::message)
  (if (not (find-package "TALKER_LISTENER"))
    (make-package "TALKER_LISTENER"))
  (shadow 'message (find-package "TALKER_LISTENER")))
(unless (find-package "TALKER_LISTENER::MESSAGE")
  (make-package "TALKER_LISTENER::MESSAGE"))

(in-package "ROS")
;;//! \htmlinclude message.msg.html


(defclass talker_listener::message
  :super ros::object
  :slots (_num _text ))

(defmethod talker_listener::message
  (:init
   (&key
    ((:num __num) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _num (round __num))
   (setq _text (string __text))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int64 _num
    8
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _num
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _num (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _num) (= (length (_num . bv)) 2)) ;; bignum
              (write-long (ash (elt (_num . bv) 0) 0) s)
              (write-long (ash (elt (_num . bv) 1) -1) s))
             ((and (class _num) (= (length (_num . bv)) 1)) ;; big1
              (write-long (elt (_num . bv) 0) s)
              (write-long (if (>= _num 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _num s)(write-long (if (>= _num 0) 0 #xffffffff) s)))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _num
#+(or :alpha :irix6 :x86_64)
      (setf _num (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _num (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get talker_listener::message :md5sum-) "0947094fac2afc61bd2294d13ec702ed")
(setf (get talker_listener::message :datatype-) "talker_listener/message")
(setf (get talker_listener::message :definition-)
      "int64 num
string text

")



(provide :talker_listener/message "0947094fac2afc61bd2294d13ec702ed")


