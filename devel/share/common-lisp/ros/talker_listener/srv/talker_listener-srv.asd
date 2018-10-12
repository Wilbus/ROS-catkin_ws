
(cl:in-package :asdf)

(defsystem "talker_listener-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "replyServ" :depends-on ("_package_replyServ"))
    (:file "_package_replyServ" :depends-on ("_package"))
  ))