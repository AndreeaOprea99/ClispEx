
(defun suma-patratelor (list)
         (let ((sum 0)) (do ((i 0 (1+ i)))
              ((>= i (length list)))
            (setq sum (+ sum (* (nth i list) (nth i list)))))
              sum))
              
              
(defun squash (alist)
  (cond
    ((null alist) nil)
    ((atom alist) (list alist))
    (t (append
         (squash (first alist))
         (squash (rest alist))
       )
    )
  )
)