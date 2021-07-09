;; Auto-generated. Do not edit!


(when (boundp 'cuda_amcl::vegvisir_msg)
  (if (not (find-package "CUDA_AMCL"))
    (make-package "CUDA_AMCL"))
  (shadow 'vegvisir_msg (find-package "CUDA_AMCL")))
(unless (find-package "CUDA_AMCL::VEGVISIR_MSG")
  (make-package "CUDA_AMCL::VEGVISIR_MSG"))

(in-package "ROS")
;;//! \htmlinclude vegvisir_msg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cuda_amcl::vegvisir_msg
  :super ros::object
  :slots (_amcl_pose _odom_cal ))

(defmethod cuda_amcl::vegvisir_msg
  (:init
   (&key
    ((:amcl_pose __amcl_pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    ((:odom_cal __odom_cal) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _amcl_pose __amcl_pose)
   (setq _odom_cal __odom_cal)
   self)
  (:amcl_pose
   (&rest __amcl_pose)
   (if (keywordp (car __amcl_pose))
       (send* _amcl_pose __amcl_pose)
     (progn
       (if __amcl_pose (setq _amcl_pose (car __amcl_pose)))
       _amcl_pose)))
  (:odom_cal
   (&rest __odom_cal)
   (if (keywordp (car __odom_cal))
       (send* _odom_cal __odom_cal)
     (progn
       (if __odom_cal (setq _odom_cal (car __odom_cal)))
       _odom_cal)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseWithCovarianceStamped _amcl_pose
    (send _amcl_pose :serialization-length)
    ;; geometry_msgs/Point _odom_cal
    (send _odom_cal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseWithCovarianceStamped _amcl_pose
       (send _amcl_pose :serialize s)
     ;; geometry_msgs/Point _odom_cal
       (send _odom_cal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseWithCovarianceStamped _amcl_pose
     (send _amcl_pose :deserialize buf ptr-) (incf ptr- (send _amcl_pose :serialization-length))
   ;; geometry_msgs/Point _odom_cal
     (send _odom_cal :deserialize buf ptr-) (incf ptr- (send _odom_cal :serialization-length))
   ;;
   self)
  )

(setf (get cuda_amcl::vegvisir_msg :md5sum-) "3333a8a596f79d0f0cc6ec9e2ca893e1")
(setf (get cuda_amcl::vegvisir_msg :datatype-) "cuda_amcl/vegvisir_msg")
(setf (get cuda_amcl::vegvisir_msg :definition-)
      "geometry_msgs/PoseWithCovarianceStamped amcl_pose
geometry_msgs/Point odom_cal
================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cuda_amcl/vegvisir_msg "3333a8a596f79d0f0cc6ec9e2ca893e1")


