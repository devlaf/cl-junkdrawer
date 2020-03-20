

(asdf:defsystem #:cl-junkdrawer
  :name "cl-junkdrawer"
  :version "0.0.0"
  :author "devlaf"
  :description "collection of frequently used cl crap"
  :pathname "src"
  :serial t
  :default-component-class cl-source-file.cl
  :components ((:file "hash-ops")
               (:file "list-ops"
                      :depends-on("hash-ops"))))

