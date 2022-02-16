#lang racket
;creando una variable
(define x 55)
(define y 33)
;crear un nuevo método
(define (calcular) (* x y));sin parámetros
(define (calcularX m1 m2); con dos parámetros de entrada
  (* m1 m2)
)
;recibir el valor del usuario y asignarlo variable
(print "Ingrese el valor A:")
(define a (read))
(print "Ingrese el valor B:")
(define b (read))
(+ a b)
;modificar el contenido de la variable
(set! x 999)
;(set! y (read))
;(set! y (* y 2))
;validar el mayor de dos datos
(if (< a b)
    "Caso afirmativo"
    "Caso opuesto"
    )
;condicional anidado
(if (and (> a b) (positive? a))
    {if [and (> a 10) (< a 20)]
    
        "A cumple todas las caracteristicas"
        "A es mayor pero con cumple las condiciones siguientes"
        }    
    "El mayor es B"
    )

;Juego para adivinar un número con pistas: es mayor, es menor
(printf "\n Juego de adivinar número\n")
(define mínimo 1)
(define máximo 100)
(define (adivinar)
  (quotient (+ mínimo máximo) 2))
(define (iniciar-juego min max)
  (set! mínimo min)
  (set! máximo max)
  (adivinar)
  )
(define (es-mayor)
  (set! mínimo (adivinar))
  (adivinar)
  )
(define (es-menor)
  (set! máximo (adivinar))
  (adivinar)
  )