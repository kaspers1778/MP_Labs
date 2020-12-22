(defrule task2.1
	(student (name ?name) (age ?age) (year ?year) (spec "ai") (aver_mark ?aver_mark)) =>
	(printout t crlf "Student " ?name " learn "ai" on " ?year " course" crlf))