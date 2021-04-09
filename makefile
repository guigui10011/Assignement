README.md: guessinggame.sh
	(echo -n "## " && basename $(PWD)) > README.md
	echo -n "created the: " >> README.md
	date >> README.md
	echo -n "Number of code lines in 'guessinggame.sh': " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+"  >> README.md

clean:
	rm README.md

