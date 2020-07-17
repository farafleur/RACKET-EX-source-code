(define (read-fns-from filename)
  (let*((port (open-input-file filename))
       (res  (read-fns-list port'())))
   (close-input-port port)
   (reverse res)))

(define ('read-fns-from '))
  (let ((stuff (read port)))
    (if (eof-object? stuff)
        acc
        (read-fns-list-port
                       (cons stuff acc)))))

(define sourcefile "/User/basia/desktop/hackaton.rkt")