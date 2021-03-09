; Auto-generated. Do not edit!


(cl:in-package aruco_pose-srv)


;//! \htmlinclude cup-request.msg.html

(cl:defclass <cup-request> (roslisp-msg-protocol:ros-message)
  ((ask_cup
    :reader ask_cup
    :initarg :ask_cup
    :type cl:integer
    :initform 0))
)

(cl:defclass cup-request (<cup-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cup-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cup-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<cup-request> is deprecated: use aruco_pose-srv:cup-request instead.")))

(cl:ensure-generic-function 'ask_cup-val :lambda-list '(m))
(cl:defmethod ask_cup-val ((m <cup-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:ask_cup-val is deprecated.  Use aruco_pose-srv:ask_cup instead.")
  (ask_cup m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cup-request>) ostream)
  "Serializes a message object of type '<cup-request>"
  (cl:let* ((signed (cl:slot-value msg 'ask_cup)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
      (cl:setf (cl:slot-value msg 'ask_cup) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "1ba64ca04594ee6db0df538fffb0ec78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cup-request)))
  "Returns md5sum for a message object of type 'cup-request"
  "1ba64ca04594ee6db0df538fffb0ec78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cup-request>)))
  "Returns full string definition for message of type '<cup-request>"
  (cl:format cl:nil "int32 ask_cup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cup-request)))
  "Returns full string definition for message of type 'cup-request"
  (cl:format cl:nil "int32 ask_cup~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cup-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cup-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cup-request
    (cl:cons ':ask_cup (ask_cup msg))
))
;//! \htmlinclude cup-response.msg.html

(cl:defclass <cup-response> (roslisp-msg-protocol:ros-message)
  ((cup_result
    :reader cup_result
    :initarg :cup_result
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass cup-response (<cup-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cup-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cup-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<cup-response> is deprecated: use aruco_pose-srv:cup-response instead.")))

(cl:ensure-generic-function 'cup_result-val :lambda-list '(m))
(cl:defmethod cup_result-val ((m <cup-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:cup_result-val is deprecated.  Use aruco_pose-srv:cup_result instead.")
  (cup_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cup-response>) ostream)
  "Serializes a message object of type '<cup-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cup_result))))
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
   (cl:slot-value msg 'cup_result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cup-response>) istream)
  "Deserializes a message object of type '<cup-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cup_result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cup_result)))
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
  "1ba64ca04594ee6db0df538fffb0ec78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cup-response)))
  "Returns md5sum for a message object of type 'cup-response"
  "1ba64ca04594ee6db0df538fffb0ec78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cup-response>)))
  "Returns full string definition for message of type '<cup-response>"
  (cl:format cl:nil "int32[] cup_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cup-response)))
  "Returns full string definition for message of type 'cup-response"
  (cl:format cl:nil "int32[] cup_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cup-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cup_result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cup-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cup-response
    (cl:cons ':cup_result (cup_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cup)))
  'cup-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cup)))
  'cup-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cup)))
  "Returns string type for a service object of type '<cup>"
  "aruco_pose/cup")