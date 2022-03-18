#lang racket
(define p (mcons 1 2))  
p
(set-mcar! p 10)  
(set-mcdr! p 20)
p
(define a (mcons 1 2))  
(define b a)  
(mcar b)
b
(set-mcar! a 20)  
(mcar b)
b

;ejemplo de interpreto
(define (rep-loop)
   (display "x++> ")              
   (let ((expr (read)))           
      (cond {(eq? expr 'salir)    
             (display "saliendo lenguaje x++")
             (newline)}
            [(eq? expr 'ayuda)    
             (display "Ingrese la instrucción salir o expresiones matemáticas entre paréntesis")
             (newline)
             (rep-loop)]
            ((eq? expr 'dir)    
             (display "Lista del sistema")
             (newline)
             (rep-loop))
            (else                 
             (display (eval expr))
             (newline)
             (rep-loop))))) 




