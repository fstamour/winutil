(in-package #:winutil)

(defgeneric hmenu (obj)
  (:documentation "Coerce `obj' into a `win32:hmenu'")
  (:method (obj)
    obj)
  (:method ((obj null))
    (declare (ignore obj))
    (cffi:null-pointer))
  (:method ((obj integer))
    (%coerce-pointer obj)))
