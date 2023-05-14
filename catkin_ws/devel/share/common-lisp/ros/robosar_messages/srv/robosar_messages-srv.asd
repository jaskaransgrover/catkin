
(cl:in-package :asdf)

(defsystem "robosar_messages-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "agent_status" :depends-on ("_package_agent_status"))
    (:file "_package_agent_status" :depends-on ("_package"))
    (:file "sys_odom_reset" :depends-on ("_package_sys_odom_reset"))
    (:file "_package_sys_odom_reset" :depends-on ("_package"))
    (:file "taskgen_getwaypts" :depends-on ("_package_taskgen_getwaypts"))
    (:file "_package_taskgen_getwaypts" :depends-on ("_package"))
  ))