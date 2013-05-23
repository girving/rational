all: rational.so

PYTHON = python

rational.so: rational.c
	$(PYTHON) setup.py build
	cp build/lib.*/rational.so .

.PHONY: clean test

clean:
	rm -f *.o *.E *.so
