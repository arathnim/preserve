(asdf:defsystem "preserve"
	:serial t
	:version "0.1"
	:author "Dylan Ball <arathnim@gmail.com>"
	:maintainer "Dylan Ball <arathnim@gmail.com>"
	:description "generalized parsing framework"
	:depends-on (iterate cl-store alexandria)
	:components ((:file "preserve")))
