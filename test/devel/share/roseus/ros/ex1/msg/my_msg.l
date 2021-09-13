;; Auto-generated. Do not edit!


(when (boundp 'ex1::my_msg)
  (if (not (find-package "EX1"))
    (make-package "EX1"))
  (shadow 'my_msg (find-package "EX1")))
(unless (find-package "EX1::MY_MSG")
  (make-package "EX1::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html


(defclass ex1::my_msg
  :super ros::object
  :slots (_x _y _add _dec _mul _div ))

(defmethod ex1::my_msg
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:add __add) 0.0)
    ((:dec __dec) 0.0)
    ((:mul __mul) 0.0)
    ((:div __div) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _add (float __add))
   (setq _dec (float __dec))
   (setq _mul (float __mul))
   (setq _div (float __div))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:add
   (&optional __add)
   (if __add (setq _add __add)) _add)
  (:dec
   (&optional __dec)
   (if __dec (setq _dec __dec)) _dec)
  (:mul
   (&optional __mul)
   (if __mul (setq _mul __mul)) _mul)
  (:div
   (&optional __div)
   (if __div (setq _div __div)) _div)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _add
    4
    ;; float32 _dec
    4
    ;; float32 _mul
    4
    ;; float32 _div
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _add
       (sys::poke _add (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dec
       (sys::poke _dec (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mul
       (sys::poke _mul (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _div
       (sys::poke _div (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _add
     (setq _add (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dec
     (setq _dec (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mul
     (setq _mul (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _div
     (setq _div (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ex1::my_msg :md5sum-) "44ff2c22d9a554d1e2d1b68f3b671b07")
(setf (get ex1::my_msg :datatype-) "ex1/my_msg")
(setf (get ex1::my_msg :definition-)
      "float32 x
float32 y
float32 add
float32 dec
float32 mul
float32 div

")



(provide :ex1/my_msg "44ff2c22d9a554d1e2d1b68f3b671b07")


