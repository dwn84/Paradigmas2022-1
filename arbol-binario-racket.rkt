#lang racket
;definición del árbol binario
(define (arbol-binario raiz izq der)
  (list raiz izq der)
  )
;retornar el dato en la raiz
(define (raiz-ab arbol-binario)
  (car arbol-binario)
  )
;retornar hijo a la izquierda
(define (izq-ab arbol-binario)
  (cadr arbol-binario)
  )
;retornar hijo a la derecha
(define (der-ab arbol-binario)
  (caddr arbol-binario)  
  )
;validar si el arbol esta vacio
(define (arbol-vacio? arbol-binario)
  (null? arbol-binario)
  )
;validar si es una hoja
(define (hoja-arbol? arbol-binario)
  (and
   (arbol-vacio? (izq-ab arbol-binario))
   (arbol-vacio? (der-ab arbol-binario))
   )
  )
;recorrido in-orden: retornar una nueva lista
(define (mostrar-lista-ab arbol-binario)
  (if (arbol-vacio? arbol-binario)
      '();caso base: no existe nodo siguiente
      (append (mostrar-lista-ab (izq-ab arbol-binario))
              (raiz-ab arbol-binario)
              (mostrar-lista-ab (der-ab arbol-binario))
   )
  )
)

;Prueba de implementación
(define d (arbol-binario (list 'd) null null))
(define g (arbol-binario (list 'g) null null))
(define h (arbol-binario (list 'h) null null))
(define f (arbol-binario (list 'f) null null))
(define e (arbol-binario (list 'e) g h))
(define c (arbol-binario (list 'c) e f))
(define b (arbol-binario (list 'b) d null))
(define mi-arbol (arbol-binario (list 'a) b c))
(displayln "Estructura del árbol")
mi-arbol
(displayln "Hijo a la izquierda")
(izq-ab mi-arbol)
(displayln "Hijo a la derecha")
(der-ab mi-arbol)
(displayln "Dato del nodo raiz")
(raiz-ab mi-arbol)
(displayln "validar si esta vacio")
(arbol-vacio? mi-arbol)
(displayln "validar si hijo izquierda esta vacio")
(arbol-vacio? (izq-ab mi-arbol))
(displayln "validar si es una hoja")
(hoja-arbol? mi-arbol)
(displayln "mostrar los datos in-orden")
(mostrar-lista-ab mi-arbol)
