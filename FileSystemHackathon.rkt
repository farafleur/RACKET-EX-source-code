;;
;; how to use the file system:
;;
;; you need to define the file path to where you have placed
;; the source code file "hackathon.rkt"
;; (define sourcefile "/.../hackathon.rkt")
;;
;; you will call the file reader in the following way:
;; (read-fns-from sourcefile)
;;
;;

(define (read-fns-from filename)
  (let* ((port (open-input-file filename))
         (res (read-fns-list port '())))
    (close-input-port port)
    (reverse res)))

(define (read-fns-list port acc)
    (let ((stuff (read port)))
      (if (eof-object? stuff)
          acc
          (read-fns-list port
                         (cons stuff acc)))))









