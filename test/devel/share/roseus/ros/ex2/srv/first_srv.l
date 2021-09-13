;; Auto-generated. Do not edit!


(when (boundp 'ex2::first_srv)
  (if (not (find-package "EX2"))
    (make-package "EX2"))
  (shadow 'first_srv (find-package "EX2")))
(unless (find-package "EX2::FIRST_SRV")
  (make-package "EX2::FIRST_SRV"))
(unless (find-package "EX2::FIRST_SRVREQUEST")
  (make-package "EX2::FIRST_SRVREQUEST"))
(unless (find-package "EX2::FIRST_SRVRESPONSE")
  (make-package "EX2::FIRST_SRVRESPONSE"))

(in-package "ROS")





(defclass ex2::first_srvRequest
  :super ros::object
  :slots (_str1 _str2 ))

(defmethod ex2::first_srvRequest
  (:init
   (&key
    ((:str1 __str1) "")
    ((:str2 __str2) "")
    )
   (send-super :init)
   (setq _str1 (string __str1))
   (setq _str2 (string __str2))
   self)
  (:str1
   (&optional __str1)
   (if __str1 (setq _str1 __str1)) _str1)
  (:str2
   (&optional __str2)
   (if __str2 (setq _str2 __str2)) _str2)
  (:serialization-length
   ()
   (+
    ;; string _str1
    4 (length _str1)
    ;; string _str2
    4 (length _str2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _str1
       (write-long (length _str1) s) (princ _str1 s)
     ;; string _str2
       (write-long (length _str2) s) (princ _str2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _str1
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str1 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _str2
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _str2 (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ex2::first_srvResponse
  :super ros::object
  :slots (_ans ))

(defmethod ex2::first_srvResponse
  (:init
   (&key
    ((:ans __ans) "")
    )
   (send-super :init)
   (setq _ans (string __ans))
   self)
  (:ans
   (&optional __ans)
   (if __ans (setq _ans __ans)) _ans)
  (:serialization-length
   ()
   (+
    ;; string _ans
    4 (length _ans)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ans
       (write-long (length _ans) s) (princ _ans s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ans
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ans (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ex2::first_srv
  :super ros::object
  :slots ())

(setf (get ex2::first_srv :md5sum-) "13364833f0478803e63d07b0985a346c")
(setf (get ex2::first_srv :datatype-) "ex2/first_srv")
(setf (get ex2::first_srv :request) ex2::first_srvRequest)
(setf (get ex2::first_srv :response) ex2::first_srvResponse)

(defmethod ex2::first_srvRequest
  (:response () (instance ex2::first_srvResponse :init)))

(setf (get ex2::first_srvRequest :md5sum-) "13364833f0478803e63d07b0985a346c")
(setf (get ex2::first_srvRequest :datatype-) "ex2/first_srvRequest")
(setf (get ex2::first_srvRequest :definition-)
      "string str1
string str2
---
string ans

")

(setf (get ex2::first_srvResponse :md5sum-) "13364833f0478803e63d07b0985a346c")
(setf (get ex2::first_srvResponse :datatype-) "ex2/first_srvResponse")
(setf (get ex2::first_srvResponse :definition-)
      "string str1
string str2
---
string ans

")



(provide :ex2/first_srv "13364833f0478803e63d07b0985a346c")


