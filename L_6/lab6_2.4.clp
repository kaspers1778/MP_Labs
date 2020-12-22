(defrule task2.4
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20))
	(test (eq (type ?name) SYMBOL))
	(test (eq (type ?age) INTEGER)) 
	(test (>= (+ ?age (- 5 ?year)) 25)) =>
	(printout t crlf "Stident " ?name " is " ?age " years old" crlf))

