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
  :slots (_ask_cup ))

(defmethod aruco_pose::cupRequest
  (:init
   (&key
    ((:ask_cup __ask_cup) 0)
    )
   (send-super :init)
   (setq _ask_cup (round __ask_cup))
   self)
  (:ask_cup
   (&optional __ask_cup)
   (if __ask_cup (setq _ask_cup __ask_cup)) _ask_cup)
  (:serialization-length
   ()
   (+
    ;; int32 _ask_cup
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _ask_cup
       (write-long _ask_cup s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _ask_cup
     (setq _ask_cup (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass aruco_pose::cupResponse
  :super ros::object
  :slots (_cup_result ))

(defmethod aruco_pose::cupResponse
  (:init
   (&key
    ((:cup_result __cup_result) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _cup_result __cup_result)
   self)
  (:cup_result
   (&optional __cup_result)
   (if __cup_result (setq _cup_result __cup_result)) _cup_result)
  (:serialization-length
   ()
   (+
    ;; int32[] _cup_result
    (* 4    (length _cup_result)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _cup_result
     (write-long (length _cup_result) s)
     (dotimes (i (length _cup_result))
       (write-long (elt _cup_result i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _cup_result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cup_result (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _cup_result i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass aruco_pose::cup
  :super ros::object
  :slots ())

(setf (get aruco_pose::cup :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get aruco_pose::cup :datatype-) "aruco_pose/cup")
(setf (get aruco_pose::cup :request) aruco_pose::cupRequest)
(setf (get aruco_pose::cup :response) aruco_pose::cupResponse)

(defmethod aruco_pose::cupRequest
  (:response () (instance aruco_pose::cupResponse :init)))

(setf (get aruco_pose::cupRequest :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get aruco_pose::cupRequest :datatype-) "aruco_pose/cupRequest")
(setf (get aruco_pose::cupRequest :definition-)
      "int32 ask_cup
---
int32[] cup_result

")

(setf (get aruco_pose::cupResponse :md5sum-) "1ba64ca04594ee6db0df538fffb0ec78")
(setf (get aruco_pose::cupResponse :datatype-) "aruco_pose/cupResponse")
(setf (get aruco_pose::cupResponse :definition-)
      "int32 ask_cup
---
int32[] cup_result

")



(provide :aruco_pose/cup "1ba64ca04594ee6db0df538fffb0ec78")


