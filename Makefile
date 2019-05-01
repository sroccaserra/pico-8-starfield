PICO_8 ?= $(HOME)/Applications/Games/PICO-8/PICO-8.app/Contents/MacOS/pico8

.PHONY: run
run:
	$(PICO_8) -root_path carts -run carts/starfield.p8
