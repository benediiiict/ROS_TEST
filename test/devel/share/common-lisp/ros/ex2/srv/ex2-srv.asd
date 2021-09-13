
(cl:in-package :asdf)

(defsystem "ex2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "first_srv" :depends-on ("_package_first_srv"))
    (:file "_package_first_srv" :depends-on ("_package"))
  ))