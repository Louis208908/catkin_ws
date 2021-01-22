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
  :slots (_OAO ))

(defmethod aruco_pose::nsRequest
  (:init
   (&key
    ((:OAO __OAO) 0)
    )
   (send-super :init)
   (setq _OAO (round __OAO))
   self)
  (:OAO
   (&optional __OAO)
   (if __OAO (setq _OAO __OAO)) _OAO)
  (:serialization-length
   ()
   (+
    ;; int32 _OAO
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _OAO
       (write-long _OAO s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _OAO
     (setq _OAO (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::nsResponse
  :super ros::object
  :slots (_ns ))

(defmethod aruco_pose::nsResponse
  (:init
   (&key
    ((:ns __ns) 0)
    )
   (send-super :init)
   (setq _ns (round __ns))
   self)
  (:ns
   (&optional __ns)
   (if __ns (setq _ns __ns)) _ns)
  (:serialization-length
   ()
   (+
    ;; int32 _ns
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ns
       (write-long _ns s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ns
     (setq _ns (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::ns
  :super ros::object
  :slots ())

(setf (get aruco_pose::ns :md5sum-) "8776fa0eb36ce3f8ec3b065ea8aaf653")
(setf (get aruco_pose::ns :datatype-) "aruco_pose/ns")
(setf (get aruco_pose::ns :request) aruco_pose::nsRequest)
(setf (get aruco_pose::ns :response) aruco_pose::nsResponse)

(defmethod aruco_pose::nsRequest
  (:response () (instance aruco_pose::nsResponse :init)))

(setf (get aruco_pose::nsRequest :md5sum-) "8776fa0eb36ce3f8ec3b065ea8aaf653")
(setf (get aruco_pose::nsRequest :datatype-) "aruco_pose/nsRequest")
(setf (get aruco_pose::nsRequest :definition-)
      "int32 OAO
---
int32 ns
")

(setf (get aruco_pose::nsResponse :md5sum-) "8776fa0eb36ce3f8ec3b065ea8aaf653")
(setf (get aruco_pose::nsResponse :datatype-) "aruco_pose/nsResponse")
(setf (get aruco_pose::nsResponse :definition-)
      "int32 OAO
---
int32 ns
")



(provide :aruco_pose/ns "8776fa0eb36ce3f8ec3b065ea8aaf653")


