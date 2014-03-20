
.PHONY: all clean

LESSC=node_modules/.bin/lessc

all: 										\
			css/colorpicker.css

clean:
	-@touch less/colorpicker.less

css/colorpicker.css: 						\
			less/colorpicker.less 			\
			$(LESSC)						\
			Makefile
	$(LESSC) -sm=on less/colorpicker.less css/colorpicker.css

$(LESSC):
	npm install

