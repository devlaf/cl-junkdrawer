
(defun filter (func cln)
    (remove-if-not func cln))
    
(defun reduce-from (func cur cln)
  (if (null cln)
       cur
    (reduce-from func (funcall func cur (car cln)) (cdr cln))))

(defun distinct (cln)
    (let ((hash (make-hash-table)))
        (loop for element in cln do
            (setf (gethash element hash) 1))
        (hash-keys hash)))

(defun flatmap (cln)
    (labels ((mklist (x) (if (listp x) x (list x))))
        (mapcan #'(lambda (x) (if (atom x) (mklist x) (flatmap x))) cln)))

(defun first-or-nil (func cln)
    (first (filter func cln)))

(defun first-or-default (func default cln)
    (let (( result (first-or-nil func cln)))
        (if (eq result NIL) default result)))

(defun all (func cln)
    (let (( found (first-or-default func `() cln)))
        (eq (list-length found) (list-length cln))))
    
(defun any (func cln)
    (let (( found (first-or-default func `() cln)))
        (> (list-length found) 0)))


