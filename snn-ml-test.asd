(in-package :cl-user)
(defpackage snn-ml-test-asd
  (:use :cl :asdf))
(in-package :snn-ml-test-asd)

(defsystem snn-ml-test
  :author "ck46"
  :depends-on (:aria-brain
               :prove)
  :components ((:module "t"
                :components
                ((:file "snn-ml"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
