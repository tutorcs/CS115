#lang racket
  (provide make-compound compound-name compound-pl compound?
           make-part part-size part-eoc part?
           make-element element-name element-mmass element?
           hydrogen carbon oxygen sodium sulfur argon calcium
           iron phosphorus po-four so-four calcium-phosphate
           glucose iron-sulfate cinnamaldehyde
           e1 e10 e100 c123 c45 c200 c489 c304)
  
  
  
  (define-struct compound (name pl) #:transparent)
  ;; A compound is a structure (make-compound n l) where n is a symbol and l
  ;; a list of parts.
  
  (define-struct part (size eoc) #:transparent) 
  ;; A part is a structure (make-part s e) where s is an integer and e is
  ;; an element or a compound.
  
  ;; A list of parts is either empty or (cons p lop) where p is a part and
  ;; lop is a list of parts. 
  
  (define-struct element (name mmass) #:transparent)
  ;; An element is a structure (make-element n m) where n is a symbol and
  ;; m is a number (the molar mass).
  
  ;; Molar mass is the mass of one mole of the substance (6.02 x 10^23 particles).
  
  ;; Fake definitions for easy testing
  ;; Elements
  (define e1 (make-element 'e1 1))
  (define e10 (make-element 'e10 10))
  (define e100 (make-element 'e100 100))
  
  ;; Compounds made only of elements
  (define c123 (make-compound 'c123
                            (list (make-part 1 e100) (make-part 2 e10) (make-part 3 e1))))
  (define c45 (make-compound 'c45
                            (list (make-part 4 e10) (make-part 5 e1))))
  (define c200 (make-compound 'c200 (list (make-part 2 e100))))
  
  ;; Compounds made of compounds and elements
  (define c489 (make-compound 'c489
                              (list (make-part 1 c123) (make-part 1 c45) (make-part 3 e100)
                                    (make-part 2 e10) (make-part 1 e1))))
  (define c304 (make-compound 'c304 
                              (list (make-part 1 c200) (make-part 1 e100) (make-part 4 e1))))
  
  ;; Definitions for examples
  (define hydrogen (make-element 'H 1.01))
  (define carbon (make-element 'C 12.01))
  (define oxygen (make-element 'O 16.00))
  (define sodium (make-element 'Na 22.99))
  (define sulfur (make-element 'S 32.07))
  (define argon (make-element 'Ar 39.95))
  (define calcium (make-element 'Ca 40.08))
  (define iron (make-element 'Fe 55.85))
  (define phosphorus (make-element 'P 30.97))
  (define po-four (make-compound 'PO4 (list (make-part 1 phosphorus) (make-part 4 oxygen))))
  (define so-four (make-compound 'SO4 (list (make-part 1 sulfur) (make-part 4 oxygen))))
  (define calcium-phosphate 
    (make-compound 'calcium-phosphate (list (make-part 3 calcium) (make-part 2 po-four))))
  (define glucose 
    (make-compound 'glucose 
                   (list (make-part 6 carbon) (make-part 12 hydrogen) (make-part 6 oxygen))))
  (define iron-sulfate 
    (make-compound 'iron-sulfate (list (make-part 2 iron) (make-part 3 so-four))))
  (define cinnamaldehyde 
    (make-compound 'cinnamaldehyde 
                   (list (make-part 9 carbon) (make-part 8 hydrogen) (make-part 1 oxygen))))
  
 
