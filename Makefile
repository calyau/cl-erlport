ERLPORT_DIR=erlport
ERL_VERSION?=20.3
ERL_HOME=/opt/erlang/$(ERL_VERSION)

$(ERLPORT_DIR):
	@git clone https://github.com/hdima/erlport.git

erlport-release: $(ERLPORT_DIR)
	@source $(ERL_HOME)/activate && \
	cd $(ERLPORT_DIR) && \
	make && \
	make release

erlport-infra: erlport-release
	source $(ERL_HOME)/activate && \
	cd $(ERLPORT_DIR) && \
	erl -env ERL_LIBS ../erlport

clean-erlport:
	@rm -rf $(ERLPORT_DIR)

repl:
	@rlwrap \
	  --prompt-colour=YELLOW \
	  --histsize=100000 \
	  -t "Steel Bank Common Lisp" \
	  --remember \
	  sbcl

test:
	@sbcl \
	  --eval '(ql:system-apropos :prove)' \
	  --eval '(ql:quickload :prove)' \
	  --eval '(setf prove:*enable-colors* t)' \
	  --eval '(asdf:test-system :erlport)' \
	  --eval '(quit)'
