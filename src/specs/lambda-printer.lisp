(in-package #:geb.lambda.spec)

(defmacro easy-printer (class-name)
  `(defmethod print-object ((obj ,class-name) stream)
     (print-object (cons ',class-name
                         (mapcar #'cdr (geb.mixins:to-pointwise-list obj)))
                   stream)))

(easy-printer absurd)
(easy-printer unit)
(easy-printer left)
(easy-printer right)
(easy-printer case-on)
(easy-printer pair)
(easy-printer fst)
(easy-printer snd)
(easy-printer lamb)
(easy-printer app)
(easy-printer index)
