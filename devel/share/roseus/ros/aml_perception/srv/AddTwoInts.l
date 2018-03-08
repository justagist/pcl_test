;; Auto-generated. Do not edit!


(when (boundp 'aml_perception::AddTwoInts)
  (if (not (find-package "AML_PERCEPTION"))
    (make-package "AML_PERCEPTION"))
  (shadow 'AddTwoInts (find-package "AML_PERCEPTION")))
(unless (find-package "AML_PERCEPTION::ADDTWOINTS")
  (make-package "AML_PERCEPTION::ADDTWOINTS"))
(unless (find-package "AML_PERCEPTION::ADDTWOINTSREQUEST")
  (make-package "AML_PERCEPTION::ADDTWOINTSREQUEST"))
(unless (find-package "AML_PERCEPTION::ADDTWOINTSRESPONSE")
  (make-package "AML_PERCEPTION::ADDTWOINTSRESPONSE"))

(in-package "ROS")





(defclass aml_perception::AddTwoIntsRequest
  :super ros::object
  :slots (_a _b _c ))

(defmethod aml_perception::AddTwoIntsRequest
  (:init
   (&key
    ((:a __a) 0)
    ((:b __b) 0)
    ((:c __c) "")
    )
   (send-super :init)
   (setq _a (round __a))
   (setq _b (round __b))
   (setq _c (string __c))
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:serialization-length
   ()
   (+
    ;; int64 _a
    8
    ;; int64 _b
    8
    ;; string _c
    4 (length _c)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _a
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _a (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _a) (= (length (_a . bv)) 2)) ;; bignum
              (write-long (ash (elt (_a . bv) 0) 0) s)
              (write-long (ash (elt (_a . bv) 1) -1) s))
             ((and (class _a) (= (length (_a . bv)) 1)) ;; big1
              (write-long (elt (_a . bv) 0) s)
              (write-long (if (>= _a 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _a s)(write-long (if (>= _a 0) 0 #xffffffff) s)))
     ;; int64 _b
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _b (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _b) (= (length (_b . bv)) 2)) ;; bignum
              (write-long (ash (elt (_b . bv) 0) 0) s)
              (write-long (ash (elt (_b . bv) 1) -1) s))
             ((and (class _b) (= (length (_b . bv)) 1)) ;; big1
              (write-long (elt (_b . bv) 0) s)
              (write-long (if (>= _b 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _b s)(write-long (if (>= _b 0) 0 #xffffffff) s)))
     ;; string _c
       (write-long (length _c) s) (princ _c s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _a
#+(or :alpha :irix6 :x86_64)
      (setf _a (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _a (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _b
#+(or :alpha :irix6 :x86_64)
      (setf _b (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _b (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _c
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _c (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass aml_perception::AddTwoIntsResponse
  :super ros::object
  :slots (_ans ))

(defmethod aml_perception::AddTwoIntsResponse
  (:init
   (&key
    ((:ans __ans) 0)
    )
   (send-super :init)
   (setq _ans (round __ans))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:serialization-length
   ()
   (+
    ;; int64 _ans
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _ans
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ans (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ans) (= (length (_ans . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ans . bv) 0) 0) s)
              (write-long (ash (elt (_ans . bv) 1) -1) s))
             ((and (class _ans) (= (length (_ans . bv)) 1)) ;; big1
              (write-long (elt (_ans . bv) 0) s)
              (write-long (if (>= _ans 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ans s)(write-long (if (>= _ans 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _ans
#+(or :alpha :irix6 :x86_64)
      (setf _ans (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ans (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass aml_perception::AddTwoInts
  :super ros::object
  :slots ())

(setf (get aml_perception::AddTwoInts :md5sum-) "72451fc6a0b38b132e2068315b06380a")
(setf (get aml_perception::AddTwoInts :datatype-) "aml_perception/AddTwoInts")
(setf (get aml_perception::AddTwoInts :request) aml_perception::AddTwoIntsRequest)
(setf (get aml_perception::AddTwoInts :response) aml_perception::AddTwoIntsResponse)

(defmethod aml_perception::AddTwoIntsRequest
  (:response () (instance aml_perception::AddTwoIntsResponse :init)))

(setf (get aml_perception::AddTwoIntsRequest :md5sum-) "72451fc6a0b38b132e2068315b06380a")
(setf (get aml_perception::AddTwoIntsRequest :datatype-) "aml_perception/AddTwoIntsRequest")
(setf (get aml_perception::AddTwoIntsRequest :definition-)
      "int64 a
int64 b
string c
---
int64 ans

")

(setf (get aml_perception::AddTwoIntsResponse :md5sum-) "72451fc6a0b38b132e2068315b06380a")
(setf (get aml_perception::AddTwoIntsResponse :datatype-) "aml_perception/AddTwoIntsResponse")
(setf (get aml_perception::AddTwoIntsResponse :definition-)
      "int64 a
int64 b
string c
---
int64 ans

")



(provide :aml_perception/AddTwoInts "72451fc6a0b38b132e2068315b06380a")


