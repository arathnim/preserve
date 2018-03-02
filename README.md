## usage

To mark variables to be preserved, wrap them with the 'preserve' macro:

```
(preserve
   (defvar shopping-list '(eggs bread milk))
   (defvar save-game (make-save :new)))
```

For a clean exit, call 'preserve-end' before exiting.

## example

```
(preserve
   (defvar counter 0))

(defun main ()
   (format t "you have run this program ~a times" (incf counter))
   (preserve-end)
   (exit))
```

## dependencies and installation

Preserve requires quicklisp to run. It's been tested on sbcl, but should work on other CL implementations.
to install quicklisp, head over to [quicklisp's website](https://www.quicklisp.org/beta/) and follow the instructions there.
Make sure you run `(ql:add-to-init-file)`, otherwise quicklisp won't be avaliable when you start your interpreter.

To use preserve, clone the repo into `~/quicklisp/local-projects`, and run `(ql:quickload 'preserve)`.
