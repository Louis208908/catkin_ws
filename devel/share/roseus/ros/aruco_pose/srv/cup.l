;; Auto-generated. Do not edit!


(when (boundp 'aruco_pose::cup)
  (if (not (find-package "ARUCO_POSE"))
    (make-package "ARUCO_POSE"))
  (shadow 'cup (find-package "ARUCO_POSE")))
(unless (find-package "ARUCO_POSE::CUP")
  (make-package "ARUCO_POSE::CUP"))
(unless (find-package "ARUCO_POSE::CUPREQUEST")
  (make-package "ARUCO_POSE::CUPREQUEST"))
(unless (find-package "ARUCO_POSE::CUPRESPONSE")
  (make-package "ARUCO_POSE::CUPRESPONSE"))

(in-package "ROS")





(defclass aruco_pose::cupRequest
  :super ros::object
  :slots (_OUO ))

(defmethod aruco_pose::cupRequest
  (:init
   (&key
    ((:OUO __OUO) 0)
    )
   (send-super :init)
   (setq _OUO (round __OUO))
   self)
  (:OUO
   (&optional __OUO)
   (if __OUO (setq _OUO __OUO)) _OUO)
  (:serialization-length
   ()
   (+
    ;; int32 _OUO
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _OUO
       (write-long _OUO s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _OUO
     (setq _OUO (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::cupResponse
  :super ros::object
  :slots (_CupResult ))

(defmethod aruco_pose::cupResponse
  (:init
   (&key
    ((:CupResult __CupResult) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _CupResult __CupResult)
   self)
  (:CupResult
   (&optional __CupResult)
   (if __CupResult (setq _CupResult __CupResult)) _CupResult)
  (:serialization-length
   ()
   (+
    ;; int32[] _CupResult
    (* 4    (length _CupResult)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _CupResult
     (write-long (length _CupResult) s)
     (dotimes (i (length _CupResult))
       (write-long (elt _CupResult i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _CupResult
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _CupResult (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _CupResult i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aruco_pose::cup
  :super ros::object
  :slots ())

(setf (get aruco_pose::cup :md5sum-) "82c828fe2774e236745aee3e2d245fe9")
(setf (get aruco_pose::cup :datatype-) "aruco_pose/cup")
(setf (get aruco_pose::cup :request) aruco_pose::cupRequest)
(setf (get aruco_pose::cup :response) aruco_pose::cupResponse)

(defmethod aruco_pose::cupRequest
  (:response () (instance aruco_pose::cupResponse :init)))

(setf (get aruco_pose::cupRequest :md5sum-) "82c828fe2774e236745aee3e2d245fe9")
(setf (get aruco_pose::cupRequest :datatype-) "aruco_pose/cupRequest")
(setf (get aruco_pose::cupRequest :definition-)
      "int32 OUO
---
int32[] CupResult
")

(setf (get aruco_pose::cupResponse :md5sum-) "82c828fe2774e236745aee3e2d245fe9")
(setf (get aruco_pose::cupResponse :datatype-) "aruco_pose/cupResponse")
(setf (get aruco_pose::cupResponse :definition-)
      "int32 OUO
---
int32[] CupResult
")



(provide :aruco_pose/cup "82c828fe2774e236745aee3e2d245fe9")


