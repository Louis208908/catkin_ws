; Auto-generated. Do not edit!


(cl:in-package aruco_pose-srv)


;//! \htmlinclude cup-request.msg.html

(cl:defclass <cup-request> (roslisp-msg-protocol:ros-message)
  ((OUO
    :reader OUO
    :initarg :OUO
    :type cl:integer
    :initform 0))
)

(cl:defclass cup-request (<cup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<cup-request> is deprecated: use aruco_pose-srv:cup-request instead.")))

(cl:ensure-generic-function 'OUO-val :lambda-list '(m))
(cl:defmethod OUO-val ((m <cup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:OUO-val is deprecated.  Use aruco_pose-srv:OUO instead.")
  (OUO m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cup-request>) ostream)
  "Serializes a message object of type '<cup-request>"
  (cl:let* ((signed (cl:slot-value msg 'OUO)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cup-request>) istream)
  "Deserializes a message object of type '<cup-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'OUO) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cup-request>)))
  "Returns string type for a service object of type '<cup-request>"
  "aruco_pose/cupRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cup-request)))
  "Returns string type for a service object of type 'cup-request"
  "aruco_pose/cupRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cup-request>)))
  "Returns md5sum for a message object of type '<cup-request>"
  "82c828fe2774e236745aee3e2d245fe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cup-request)))
  "Returns md5sum for a message object of type 'cup-request"
  "82c828fe2774e236745aee3e2d245fe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cup-request>)))
  "Returns full string definition for message of type '<cup-request>"
  (cl:format cl:nil "int32 OUO~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cup-request)))
  "Returns full string definition for message of type 'cup-request"
  (cl:format cl:nil "int32 OUO~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cup-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cup-request
    (cl:cons ':OUO (OUO msg))
))
;//! \htmlinclude cup-response.msg.html

(cl:defclass <cup-response> (roslisp-msg-protocol:ros-message)
  ((CupResult
    :reader CupResult
    :initarg :CupResult
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass cup-response (<cup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<cup-response> is deprecated: use aruco_pose-srv:cup-response instead.")))

(cl:ensure-generic-function 'CupResult-val :lambda-list '(m))
(cl:defmethod CupResult-val ((m <cup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:CupResult-val is deprecated.  Use aruco_pose-srv:CupResult instead.")
  (CupResult m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cup-response>) ostream)
  "Serializes a message object of type '<cup-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CupResult))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'CupResult))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cup-response>) istream)
  "Deserializes a message object of type '<cup-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CupResult) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CupResult)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cup-response>)))
  "Returns string type for a service object of type '<cup-response>"
  "aruco_pose/cupResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cup-response)))
  "Returns string type for a service object of type 'cup-response"
  "aruco_pose/cupResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cup-response>)))
  "Returns md5sum for a message object of type '<cup-response>"
  "82c828fe2774e236745aee3e2d245fe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cup-response)))
  "Returns md5sum for a message object of type 'cup-response"
  "82c828fe2774e236745aee3e2d245fe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cup-response>)))
  "Returns full string definition for message of type '<cup-response>"
  (cl:format cl:nil "int32[] CupResult~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cup-response)))
  "Returns full string definition for message of type 'cup-response"
  (cl:format cl:nil "int32[] CupResult~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cup-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CupResult) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cup-response
    (cl:cons ':CupResult (CupResult msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cup)))
  'cup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cup)))
  'cup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cup)))
  "Returns string type for a service object of type '<cup>"
  "aruco_pose/cup")