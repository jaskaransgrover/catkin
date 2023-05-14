
(cl:in-package :asdf)

(defsystem "robosar_messages-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "task_allocation" :depends-on ("_package_task_allocation"))
    (:file "_package_task_allocation" :depends-on ("_package"))
  ))