all: index.html papers.html

index.html: index.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./index.jemdoc

papers.html: papers.jemdoc ./mysite.conf MENU jemdoc.css
	python3 ./jemdoc -c ./mysite.conf ./papers.jemdoc

clean:
	rm -rf *.html