(defrule taskk2.3
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark))
	(test (>= ?age 20))
	(test (eq (type ?name) SYMBOL))
	(test (eq (type ?age) INTEGER)) =>
	(printout t crlf "Student " ?name " is " ?age " years old" crlf))