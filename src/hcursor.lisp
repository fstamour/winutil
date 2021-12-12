(in-package #:com.inuoe.winutil)

(defgeneric hcursor (obj)
  (:documentation "Coerce `obj' into a `win32:hcursor'")
  (:method (obj)
    obj)
  (:method ((obj null))
    (declare (ignore obj))
    (cffi:null-pointer))
  (:method ((obj integer))
    (%coerce-pointer obj)))
