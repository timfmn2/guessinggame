all: README.md

README.md:
	touch README.md
	echo "This file was made on:" > README.md
	date >> README.md
	echo "guessinggame.sh has the following number of lines:" >> README.md
	echo " \n"
	wc guessinggame.sh -l | cut -f 1 -d " " >> README.md

clean:
	rm README.md
	
