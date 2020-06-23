(defsystem "erlport"
  :version "0.1.0"
  :author "Duncan McGreggor <oubiwann@gmail.com>"
  :license "MIT"
  :depends-on ("erlang-term-optima")
  :components ((:module "src"
                :components
                ((:file "erlport"))))
  :description "For communicating between Common Lisp and Erlang using ErlPort"
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op "erlport-test"))))
