;; Auto-generated. Do not edit!


(when (boundp 'aruco_pose::ns)
  (if (not (find-package "ARUCO_POSE"))
    (make-package "ARUCO_POSE"))
  (shadow 'ns (find-package "ARUCO_POSE")))
(unless (find-package "ARUCO_POSE::NS")
  (make-package "ARUCO_POSE::NS"))
(unless (find-package "ARUCO_POSE::NSREQUEST")
  (make-package "ARUCO_POSE::NSREQUEST"))
(unless (find-package "ARUCO_POSE::NSRESPONSE")
  (make-package "ARUCO_POSE::NSRESPONSE"))

(in-package "ROS")





(defclass aruco_pose::nsRequest
  :super ros::object
  :slots (_ask_ns ))

(defmethod aruco_pose::nsRequest
  (:init
   (&key
    ((:ask_ns __ask_ns) 0)
    )
   (send-super :init)
   (setq _ask_ns (round __ask_ns))
   self)
  (:ask_ns
   (&optional __ask_ns)
   (if __ask_ns (setq _ask_ns __ask_ns)) _ask_ns)
  (:serialization-length
   ()
   (+
    ;; int32 _ask_ns
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ask_ns
       (write-long _ask_ns s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ask_ns
     (setq _ask_ns (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::nsResponse
  :super ros::object
  :slots (_ns_result ))

(defmethod aruco_pose::nsResponse
  (:init
   (&key
    ((:ns_result __ns_result) 0)
    )
   (send-super :init)
   (setq _ns_result (round __ns_result))
   self)
  (:ns_result
   (&optional __ns_result)
   (if __ns_result (setq _ns_result __ns_result)) _ns_result)
  (:serialization-length
   ()
   (+
    ;; int32 _ns_result
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ns_result
       (write-long _ns_result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ns_result
     (setq _ns_result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::ns
  :super ros::object
  :slots ())

(setf (get aruco_pose::ns :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get aruco_pose::ns :datatype-) "aruco_pose/ns")
(setf (get aruco_pose::ns :request) aruco_pose::nsRequest)
(setf (get aruco_pose::ns :response) aruco_pose::nsResponse)

(defmethod aruco_pose::nsRequest
  (:response () (instance aruco_pose::nsResponse :init)))

(setf (get aruco_pose::nsRequest :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get aruco_pose::nsRequest :datatype-) "aruco_pose/nsRequest")
(setf (get aruco_pose::nsRequest :definition-)
      "int32 ask_ns
---
int32 ns_result

")

(setf (get aruco_pose::nsResponse :md5sum-) "6db1d56b21aeaaf74af61c1e66674fb6")
(setf (get aruco_pose::nsResponse :datatype-) "aruco_pose/nsResponse")
(setf (get aruco_pose::nsResponse :definition-)
      "int32 ask_ns
---
int32 ns_result

")



(provide :aruco_pose/ns "6db1d56b21aeaaf74af61c1e66674fb6")


