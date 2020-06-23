(defsystem "erlport-test"
  :defsystem-depends-on ("prove-asdf")
  :author "Duncan McGreggor <oubiwann@gmail.com>"
  :license "MIT"
  :depends-on ("erlport"
               "prove")
  :components ((:module "tests"
                :components
                ((:test-file "erlport"))))
  :description "Test system for cl-erlport"
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))
