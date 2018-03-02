(ql:quickload '(#:preserve) :silent t)

(use-package "PRESERVE")

(preserve
	(defvar visits 0))

(format t "this program has been run ~a times" (incf visits))
(preserve-end)
(sb-ext:exit)
