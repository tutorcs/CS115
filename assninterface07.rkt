;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname a07interface) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define-struct bae (fn arg1 arg2))
;; A binary arithmetic expression (binexp) is either 
;; * a number, or
;; * a structure (make-bae f a1 a2), where
;;   - f is a symbol in the set '*, '+, '/, '-
;;   - a1 is a binexp
;;   - a2 is a binexp

;; A taxon is a t-modern or a t-ancient.
;; NOTE: You must add the taxon teachpack to DrRacket
;; for your solution to question 2. Do NOT define
;; the structures for t-modern and t-ancient in your solution.
;; These are defined in the teachpack.

;; A t-modern is a structure (make-t-modern n p), where
;;   n is a string and 
;;   p is a number.

;; A t-ancient is a structure (make-t-ancient n a l r), where 
;;   n is a string, 
;;   a is a number, and
;;   l and r are taxons.

(define-struct node (key left right))
;; A binary search tree (bst) is either 
;;      empty or 
;;      a structure (make-node k v lft rgt), where 
;;           k is a number,
;;           lft is a BST, and
;;           rgt is a BST.
;; In addition, the keys in lft are all less than k
;; and the keys in rgt are all greater than k.

;; Question 1
(define (scheme-ex ex)
  ...)

;; Question 2
(define (parent-of tree s-name)
  ...)

;; Question 3
(define (bst-sort lon)
  ...)