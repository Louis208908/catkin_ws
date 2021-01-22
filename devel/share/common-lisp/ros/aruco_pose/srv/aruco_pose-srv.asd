
(cl:in-package :asdf)

(defsystem "aruco_pose-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "cup" :depends-on ("_package_cup"))
    (:file "_package_cup" :depends-on ("_package"))
    (:file "ns" :depends-on ("_package_ns"))
    (:file "_package_ns" :depends-on ("_package"))
  ))