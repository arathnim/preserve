;; (author this-code) => (:name "Dylan Ball" :email "Arathnim@gmail.com")

(ql:quickload '(iterate cl-store alexandria) :silent t)

(defpackage #:preserve
   (:use cl cl-store iterate alexandria)
   (:export #:preserve #:preserve-end))

(in-package preserve)

(defvar *varlist*)

(defmacro preserve (&rest vars)
   (setf *varlist* (mapcar #'second vars))
   (with-gensyms (i r)
      `(let ((,i (open ".preserve" :direction :probe :if-does-not-exist nil)))
          (if ,i
              (let ((,r (restore ".preserve")))
                 (progn 
                     ,@(iter (for v in vars) 
                             (for n upfrom 0) 
                             (collect (list (first v) (second v) `(nth ,n ,r))))))
              (progn ,@vars)))))

(defmacro preserve-end ()
   `(store (list ,@*varlist*) ".preserve"))

