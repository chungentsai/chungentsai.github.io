all: index.html papers.html notes.html ./notes_euler_lagrange_equation.html

index.html: index.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./index.jemdoc

papers.html: papers.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./papers.jemdoc

notes.html: notes.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./notes.jemdoc

./notes_euler_lagrange_equation.html: ./notes_euler_lagrange_equation.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./notes_euler_lagrange_equation.jemdoc

clean:
	rm -rf *.html