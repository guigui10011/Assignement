README.md: guessinggame.sh
	(echo -n "## " && basename $(PWD)) > README.md
	echo -n "Created date: " >> README.md
	date >> README.md
	echo -n "  \nNumber of code lines in 'guessinggame.sh': " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md

clean:
	rm README.md

