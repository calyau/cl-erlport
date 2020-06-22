test:
	@sbcl \
	  --eval '(ql:system-apropos :prove)' \
	  --eval '(ql:quickload :prove)' \
	  --eval '(setf prove:*enable-colors* t)' \
	  --eval '(asdf:test-system :erlport)' \
	  --eval '(quit)'
