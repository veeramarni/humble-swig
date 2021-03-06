(require 'clientdata_prop_a)
(require 'clientdata_prop_b)

(define a (make <A>))
(test-A a)
(test-tA a)
(test-t2A a)
(test-t3A a)
(fA a)

(define b (make <B>))
(test-A b)
(test-tA b)
(test-t2A b)
(test-t3A b)
(test-B b)
(fA b)
(fB b)

(define c (make <C>))
(test-A c)
(test-tA c)
(test-t2A c)
(test-t3A c)
(test-C c)
(fA c)
(fC c)

(define d (make <D>))
(test-A d)
(test-tA d)
(test-t2A d)
(test-t3A d)
(test-D d)
(test-tD d)
(test-t2D d)
(fA d)
(fD d)

;; here are the real tests... if the clientdata is correctly
;; propegated, new-tA, new-t2A, should all return wrapped proxy's
;; of class <A>

(define a2 (new-tA))
(if (not (eq? (class-of a2) <A>))
  (error "Error 1"))
(test-A a2)
(test-tA a2)
(test-t2A a2)
(test-t3A a2)
(fA a2)

(define a3 (new-t2A))
(if (not (eq? (class-of a3) <A>))
  (error "Error 2"))
(test-A a3)
(test-tA a3)
(test-t2A a3)
(test-t3A a3)
(fA a3)

(define a4 (new-t3A))
(if (not (eq? (class-of a4) <A>))
  (error "Error 3"))
(test-A a4)
(test-tA a4)
(test-t2A a4)
(test-t3A a4)
(fA a4)

(define d2 (new-tD))
(if (not (eq? (class-of d2) <D>))
  (error "Error 4"))
(test-A d2)
(test-tA d2)
(test-t2A d2)
(test-t3A d2)
(test-D d2)
(test-tD d2)
(fA d2)
(fD d2)

(define d3 (new-t2D))
(if (not (eq? (class-of d3) <D>))
  (error "Error 5"))
(test-A d3)
(test-tA d3)
(test-t2A d3)
(test-t3A d3)
(test-D d3)
(test-tD d3)
(fA d3)
(fD d3)

(exit 0)
