; Auto-generated. Do not edit!


(cl:in-package ex2-srv)


;//! \htmlinclude first_srv-request.msg.html

(cl:defclass <first_srv-request> (roslisp-msg-protocol:ros-message)
  ((str1
    :reader str1
    :initarg :str1
    :type cl:string
    :initform "")
   (str2
    :reader str2
    :initarg :str2
    :type cl:string
    :initform ""))
)

(cl:defclass first_srv-request (<first_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <first_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'first_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ex2-srv:<first_srv-request> is deprecated: use ex2-srv:first_srv-request instead.")))

(cl:ensure-generic-function 'str1-val :lambda-list '(m))
(cl:defmethod str1-val ((m <first_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ex2-srv:str1-val is deprecated.  Use ex2-srv:str1 instead.")
  (str1 m))

(cl:ensure-generic-function 'str2-val :lambda-list '(m))
(cl:defmethod str2-val ((m <first_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ex2-srv:str2-val is deprecated.  Use ex2-srv:str2 instead.")
  (str2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <first_srv-request>) ostream)
  "Serializes a message object of type '<first_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str1))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'str2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'str2))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <first_srv-request>) istream)
  "Deserializes a message object of type '<first_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str1) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str1) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'str2) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'str2) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<first_srv-request>)))
  "Returns string type for a service object of type '<first_srv-request>"
  "ex2/first_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first_srv-request)))
  "Returns string type for a service object of type 'first_srv-request"
  "ex2/first_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<first_srv-request>)))
  "Returns md5sum for a message object of type '<first_srv-request>"
  "13364833f0478803e63d07b0985a346c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'first_srv-request)))
  "Returns md5sum for a message object of type 'first_srv-request"
  "13364833f0478803e63d07b0985a346c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<first_srv-request>)))
  "Returns full string definition for message of type '<first_srv-request>"
  (cl:format cl:nil "string str1~%string str2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'first_srv-request)))
  "Returns full string definition for message of type 'first_srv-request"
  (cl:format cl:nil "string str1~%string str2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <first_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'str1))
     4 (cl:length (cl:slot-value msg 'str2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <first_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'first_srv-request
    (cl:cons ':str1 (str1 msg))
    (cl:cons ':str2 (str2 msg))
))
;//! \htmlinclude first_srv-response.msg.html

(cl:defclass <first_srv-response> (roslisp-msg-protocol:ros-message)
  ((ans
    :reader ans
    :initarg :ans
    :type cl:string
    :initform ""))
)

(cl:defclass first_srv-response (<first_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <first_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'first_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ex2-srv:<first_srv-response> is deprecated: use ex2-srv:first_srv-response instead.")))

(cl:ensure-generic-function 'ans-val :lambda-list '(m))
(cl:defmethod ans-val ((m <first_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ex2-srv:ans-val is deprecated.  Use ex2-srv:ans instead.")
  (ans m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <first_srv-response>) ostream)
  "Serializes a message object of type '<first_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ans))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ans))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <first_srv-response>) istream)
  "Deserializes a message object of type '<first_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ans) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ans) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<first_srv-response>)))
  "Returns string type for a service object of type '<first_srv-response>"
  "ex2/first_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first_srv-response)))
  "Returns string type for a service object of type 'first_srv-response"
  "ex2/first_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<first_srv-response>)))
  "Returns md5sum for a message object of type '<first_srv-response>"
  "13364833f0478803e63d07b0985a346c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'first_srv-response)))
  "Returns md5sum for a message object of type 'first_srv-response"
  "13364833f0478803e63d07b0985a346c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<first_srv-response>)))
  "Returns full string definition for message of type '<first_srv-response>"
  (cl:format cl:nil "string ans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'first_srv-response)))
  "Returns full string definition for message of type 'first_srv-response"
  (cl:format cl:nil "string ans~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <first_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ans))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <first_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'first_srv-response
    (cl:cons ':ans (ans msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'first_srv)))
  'first_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'first_srv)))
  'first_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'first_srv)))
  "Returns string type for a service object of type '<first_srv>"
  "ex2/first_srv")