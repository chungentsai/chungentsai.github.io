all: index.html papers.html notes.html ./notes_euler_lagrange_equation.html ./notes_ops.html

index.html: index.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./index.jemdoc

papers.html: papers.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./papers.jemdoc

notes.html: notes.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./notes.jemdoc

./notes_euler_lagrange_equation.html: ./notes_euler_lagrange_equation.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./notes_euler_lagrange_equation.jemdoc

./notes_ops.html: ./notes_ops.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./notes_ops.jemdoc

clean:
	rm -rf *.html