;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname a02interface) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct competitor (name result))
;; A competitor is a structure, (make-competitor n r), where
;;   n is a non-empty string, representing the name of the competitor
;;   r is a number, representing a measurement of the result in an event

(define-struct event (desc gold silver bronze))
;; An event is a structure, (make-event d g s b), where
;;   d is a symbol, describing the competitive event 
;;   g is a competitor, representing the winner of the gold medal in the event
;;   s is a competitor, representing the winner of the silver medal in the event
;;   b is a competitor, representing the winner of the bronze medal in the event

(define-struct set-card (number colour shape shading))
;; A set-card is a structure, (make-set-card n c sp sd), where
;;   n is a natural number from 1 to 3
;;   c is a symbol, one of 'red, 'green, or 'purple
;;   sp is a symbol, one of 'diamond, 'oval, or 'squiggle, and
;;   sd is symbol, one of 'solid, 'striped, or 'open

;; Question 1
(define (remove-gold ev fourth-place)
  ...)

;; Question 2
(define (valid-set? c1 c2 c3)
  ...)

;; Question 3
(define (complete-set c1 c2)
  ...)