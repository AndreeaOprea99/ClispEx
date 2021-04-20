;1. Scrieti o functie in LISP care sa simuleze comportamenul lui SECOND.(3p)

(defun mysecond (l)
  (if endp l)
    nil
    (cadr l)
)

;2.Scrieti un program media_aritmetica care dintr-o lista de numere calculeaza media aritmetica a acestora.(1p) Implementati si varianta final recursiva: media_aritmetica2 (2p)

(defun media_aritmetica (l)
   (setq s 0)
   (setq k 0)
       (dolist (el l)
               (setq s (+ s el))
               (setq k (+ k 1))
       )
  (if (not (= k 0))
      (float (/ s k))
       nil
  )

)
;final recursiv
(defun media_aritmetica2 (l)
    (media-aux l 0 0)
)

(defun media-aux (l s k)
    (if (and (endp l) (not (= k 0)))
         (float (/ s k))
         (media-aux (cdr l) (+ s (car l)) (+ k 1) )
    )
)

;3. Scrieti o functie modul(lista) care returneaza lista cu numerele in valoarea absoluta dintr-o lista. Este interzisa folosirea functiei ABS. (3p) (iterativ)

(defun modul (l)
   (setq rez '())
   (dolist (x l)
        (if (< x 0)
            (setq rez (cons (* -1 x) rez))
            (setq rez (cons x rez))
        )
   )
   (reverse rez)
)