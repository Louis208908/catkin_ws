; Auto-generated. Do not edit!


(cl:in-package aruco_pose-srv)


;//! \htmlinclude ns-request.msg.html

(cl:defclass <ns-request> (roslisp-msg-protocol:ros-message)
  ((ask_ns
    :reader ask_ns
    :initarg :ask_ns
    :type cl:integer
    :initform 0))
)

(cl:defclass ns-request (<ns-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ns-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ns-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<ns-request> is deprecated: use aruco_pose-srv:ns-request instead.")))

(cl:ensure-generic-function 'ask_ns-val :lambda-list '(m))
(cl:defmethod ask_ns-val ((m <ns-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:ask_ns-val is deprecated.  Use aruco_pose-srv:ask_ns instead.")
  (ask_ns m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ns-request>) ostream)
  "Serializes a message object of type '<ns-request>"
  (cl:let* ((signed (cl:slot-value msg 'ask_ns)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ns-request>) istream)
  "Deserializes a message object of type '<ns-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ask_ns) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ns-request>)))
  "Returns string type for a service object of type '<ns-request>"
  "aruco_pose/nsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ns-request)))
  "Returns string type for a service object of type 'ns-request"
  "aruco_pose/nsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ns-request>)))
  "Returns md5sum for a message object of type '<ns-request>"
  "6db1d56b21aeaaf74af61c1e66674fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ns-request)))
  "Returns md5sum for a message object of type 'ns-request"
  "6db1d56b21aeaaf74af61c1e66674fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ns-request>)))
  "Returns full string definition for message of type '<ns-request>"
  (cl:format cl:nil "int32 ask_ns~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ns-request)))
  "Returns full string definition for message of type 'ns-request"
  (cl:format cl:nil "int32 ask_ns~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ns-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ns-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ns-request
    (cl:cons ':ask_ns (ask_ns msg))
))
;//! \htmlinclude ns-response.msg.html

(cl:defclass <ns-response> (roslisp-msg-protocol:ros-message)
  ((ns_result
    :reader ns_result
    :initarg :ns_result
    :type cl:integer
    :initform 0))
)

(cl:defclass ns-response (<ns-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ns-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ns-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aruco_pose-srv:<ns-response> is deprecated: use aruco_pose-srv:ns-response instead.")))

(cl:ensure-generic-function 'ns_result-val :lambda-list '(m))
(cl:defmethod ns_result-val ((m <ns-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aruco_pose-srv:ns_result-val is deprecated.  Use aruco_pose-srv:ns_result instead.")
  (ns_result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ns-response>) ostream)
  "Serializes a message object of type '<ns-response>"
  (cl:let* ((signed (cl:slot-value msg 'ns_result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ns-response>) istream)
  "Deserializes a message object of type '<ns-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns_result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ns-response>)))
  "Returns string type for a service object of type '<ns-response>"
  "aruco_pose/nsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ns-response)))
  "Returns string type for a service object of type 'ns-response"
  "aruco_pose/nsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ns-response>)))
  "Returns md5sum for a message object of type '<ns-response>"
  "6db1d56b21aeaaf74af61c1e66674fb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ns-response)))
  "Returns md5sum for a message object of type 'ns-response"
  "6db1d56b21aeaaf74af61c1e66674fb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ns-response>)))
  "Returns full string definition for message of type '<ns-response>"
  (cl:format cl:nil "int32 ns_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ns-response)))
  "Returns full string definition for message of type 'ns-response"
  (cl:format cl:nil "int32 ns_result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ns-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ns-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ns-response
    (cl:cons ':ns_result (ns_result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ns)))
  'ns-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ns)))
  'ns-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ns)))
  "Returns string type for a service object of type '<ns>"
  "aruco_pose/ns")