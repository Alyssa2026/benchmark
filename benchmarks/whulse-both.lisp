(define (c0) 0)
(define (c1) 1)
(define (c2) 2)
(define (c3) 3)
(define (c4) 4)
(define (c5) 5)
(define (c6) 6)
(define (c7) 7)
(define (c8) 8)
(define (c9) 9)
(define (c10) 10)

(define (add-c1-c2) (+ (c1) (c2)))
(define (add-c3-c4) (+ (c3) (c4)))
(define (add-c5-c6) (+ (c5) (c6)))

(define (sum1) (+ (add-c1-c2) (add-c3-c4)))
(define (sum2) (+ (sum1) (add-c5-c6)))
(define (total-sum) (+ (sum2) (c7)))

(define (funcA) (+ (c1) (c2)))
(define (funcB) (+ (funcA) (c3)))
(define (funcC) (+ (funcB) (c4)))
(define (funcD) (+ (funcC) (funcA)))
(define (funcE) (+ (funcD) (funcC)))
(define (funcF) (+ (funcE) (funcD)))

(let ((v1 (funcF)))
  (let ((v2 (if (= v1 30) false true)))
    (if v2
        (let ((v3 (funcE)))
          (let ((v4 (+ v3 v1)))
            (let ((v5 (- v4 (c5))))
              (if (= v5 54)
                  (print v5)
                  (print 0)))))
        (print 0))))