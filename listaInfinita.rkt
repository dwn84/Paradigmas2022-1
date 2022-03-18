#lang racket
(define (lista-infinita)
  (letrec[(siguiente-n (lambda (n)
                         (cons n (delay (siguiente-n (+ n 2))))
                         )
           )]
    (siguiente-n 2)
    )  
  )


(define (mostrar-lista n lista)
  (let ciclo[
             (i 1)
             (li lista)
             (listaTotal '())
             ]
    (if (<= i n)
        (ciclo (add1 i)
               (force (cdr li))
               (cons (car li) listaTotal)
               
         )
        listaTotal
        )
    )
  )
  
  (mostrar-lista 9 (lista-infinita))
