PICO_8 ?= /Users/sebastien.roccaserra/Applications/Games/PICO-8/PICO-8.app/Contents/MacOS/pico8

.PHONY: run
run:
	$(PICO_8) -root_path carts
