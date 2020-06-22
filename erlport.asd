(defsystem "erlport"
  :version "0.1.0"
  :author "Duncan McGreggor <oubiwann@gmail.com>"
  :license "MIT"
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "erlport"))))
  :description ""
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op "erlport-test"))))
