
(cl:in-package :asdf)

(defsystem "cuda_amcl-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "vegvisir_msg" :depends-on ("_package_vegvisir_msg"))
    (:file "_package_vegvisir_msg" :depends-on ("_package"))
  ))