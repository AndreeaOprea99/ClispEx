;1. Scrieti o functie in Lisp care sa  simuleze comportamentul lui CDR
(defun mycdr (lista)
    (setq nr 0)
    (dolist (elem lista)
        (setq nr (+ nr 1))
        (if (eq nr 1)
            (setq mycdr nil)
            (setq mycdr (nconc mycdr (list elem)))
            ))
        (print mycdr)
            
)

;2. Sa se scrie o functie pentru determinarea maximului unei liste de intregi.(iterativ)
(defun maximul (lista)
           (let ((max (car lista)))
             (dolist (x (cdr lista) max)
               (when (> x max)
                 (setf max x)))))

;3. Scrieti un program pentru calcului functiei factorial. (recursiv)
(defun factorial (n)
(if(<= n 0)
(* (factorial (- n 1)) n)
))


;4. Scrieti o functie pare( lista ) care returneaza lista cu numerele pare dintr-o lista.
(defun pare (numbers)
  (do ((x numbers (cdr x))
       (evens '() (if (evenp (car x)) (cons (car x) evens) evens)))
      ((null x) 
       (nreverse evens))))

;5. Definiti un macro pentru calculul sumei.
;( suma-macr 1 2 3 4 5 ) => 15
(defmacro suma-macr (&rest numere )
    `(+ , @numere ) )
SUMA-MACR
