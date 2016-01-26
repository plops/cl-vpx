;;;; cl-vpx.asd
(cl:eval-when (:load-toplevel :execute)
  (asdf:operate 'asdf:load-op 'cffi-grovel))

(asdf:defsystem #:cl-vpx
  :description "Describe cl-vpx here"
  :author "Martin Kielhorn"
  :license "GPLv3"
  :depends-on (cffi)
  :serial t
  :components ((:file "package")
	       (cffi-grovel:grovel-file "vpx-grovel")
               (:file "cl-vpx")))

