
(cl:in-package :asdf)

(defsystem "talker_listener-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "message" :depends-on ("_package_message"))
    (:file "_package_message" :depends-on ("_package"))
  ))