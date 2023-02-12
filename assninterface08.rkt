;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname a8interface) (read-case-sensitive #t) (teachpacks ((lib "compound.rkt" "installed-teachpacks"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "compound.rkt" "installed-teachpacks")))))
(define-struct ae (fn args))
;; An arithmetic expression (aexp) is either
;;   a number or
;;   a structure (make-ae f alist), where
;;     f is a symbol (one of '+ or '*), and
;;     alist is an aexplist

;; An aexplist is either
;;   empty, or
;;   (cons a alist), where
;;     a is an aexp and
;;     alist is an aexplist

;; A leaf-labelled tree (llt) is one of the following:
;;   empty
;;   (cons l1 l2) where l1 is a non-empty llt and l2 is an llt
;;   (cons v l) where v is an integer and l is an llt

;; A compound is a structure (make-compound n l), where
;;   n is a symbol and
;;   l is a list of parts

;; A part is a structure (make-part s e), where
;;   s is an integer representing the number of units of e and
;;   e is an element or compound.

;; A list of parts is either
;;   empty or
;;   (cons p lop), where
;;      p is a part and
;;      lop is a list of parts.

;; An element is a structure (make-element n m) where
;;   n is a symbol and
;;   m is a number (the molar mass, that is, the mass of
;;     one mole of the substance, 6.02 x 10^23 atoms).

;; Question 1

(define (step ex)
  ...)

;; Question 2

(define (longest-path tree)
  ...)


;; Question 3

(define (count-atoms c el)
  ...)