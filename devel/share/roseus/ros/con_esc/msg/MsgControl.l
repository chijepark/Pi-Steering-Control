;; Auto-generated. Do not edit!


(when (boundp 'con_esc::MsgControl)
  (if (not (find-package "CON_ESC"))
    (make-package "CON_ESC"))
  (shadow 'MsgControl (find-package "CON_ESC")))
(unless (find-package "CON_ESC::MSGCONTROL")
  (make-package "CON_ESC::MSGCONTROL"))

(in-package "ROS")
;;//! \htmlinclude MsgControl.msg.html


(defclass con_esc::MsgControl
  :super ros::object
  :slots (_data ))

(defmethod con_esc::MsgControl
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _data
       (write-long _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _data
     (setq _data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get con_esc::MsgControl :md5sum-) "da5909fbe378aeaf85e547e830cc1bb7")
(setf (get con_esc::MsgControl :datatype-) "con_esc/MsgControl")
(setf (get con_esc::MsgControl :definition-)
      "int32 data

")



(provide :con_esc/MsgControl "da5909fbe378aeaf85e547e830cc1bb7")


