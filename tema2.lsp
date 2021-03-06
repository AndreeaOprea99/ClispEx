;1
;suma numerelor unei liste(simbolurile se ignora)
(defun sum (list)
(if (NULL list) 0
(+ (car list) (sum (cdr list)))
)
)

;2
;media aritmetica a numerelor unei liste
(defun ave (list)
(if (NULL list) 0
(/ (sum list) (list-length list))
)
)

;3
;sterge prima aparitie a unui element dintr-o lista
(defun prim_ap (list a)
(remove a list :count 1)  
)


;4
;lista cu elementele de pe pozitiile pare.
(defun even_position (list)
  (loop for element in list
        for even-position = nil then (not even-position)
        when even-position collect element)
)