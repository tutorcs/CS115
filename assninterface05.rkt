;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname a05interface) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct competitor (name result))
;; A competitor is a structure, (make-competitor n r), where
;;   n is a non-empty string, representing the name of the competitor
;;   r is a positive number, representing a measurement of the result in an event

(define-struct event (desc gold silver bronze))
;; An event is a structure, (make-event d g s b), where
;;   d is a symbol, describing the competitive event 
;;   g is a competitor, representing the winner of the gold medal in the event
;;   s is a competitor, representing the winner of the silver medal in the event
;;   b is a competitor, representing the winner of the bronze medal in the event

;; An association list (al) is either
;;   empty or
;;   (cons (list k v) alst) where
;;     k is a number (the key)
;;     v is a string (the value)
;;     alst is a n association list.

;; Question 1
(define (compute-medalists event-name athletes less-is-better)
  ...)

;; Question 2
(define (factors n)
  ...)

;; Question 3
(define (matching-values dictionary s-value)
  ...)