
all: eng-hye.automorf.bin hye-eng.autogen.bin
	if [ -e ../apertium-hye/apertium-hye.hye.dix ]; then cp ../apertium-hye/apertium-hye.hye.dix apertium-hye-eng.hye.dix; fi
	if [ -e ../apertium-hye/apertium-hye.hye.rlx ]; then cp ../apertium-hye/apertium-hye.hye.rlx apertium-hye-eng.hye-eng.rlx; fi
	lt-comp lr apertium-hye-eng.hye.dix hye-eng.automorf.bin
	cg-comp apertium-hye-eng.hye-eng.rlx hye-eng.rlx.bin
	lrx-comp apertium-hye-eng.hye-eng.lrx hye-eng.autolex.bin
	lt-comp lr apertium-hye-eng.hye-eng.dix hye-eng.autobil.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t1x hye-eng.t1x.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t1x hye-eng.t2x.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t3x hye-eng.t3x.bin
	apertium-gen-modes modes.xml

hye-eng.autogen.bin:
	lt-comp rl apertium-hye-eng.eng.dix hye-eng.autogen.bin

eng-hye.automorf.bin:
	lt-comp lr apertium-hye-eng.eng.dix eng-hye.automorf.bin

