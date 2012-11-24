all:
	cp ../apertium-hye/hye.automorf.bin hye-eng.automorf.bin
	cp ../apertium-hye/hye.rlx.bin hye-eng.rlx.bin
	lrx-comp apertium-hye-eng.hye-eng.lrx hye-eng.autolex.bin
	lt-comp lr apertium-hye-eng.hye-eng.dix hye-eng.autobil.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t1x hye-eng.t1x.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t1x hye-eng.t2x.bin
	apertium-preprocess-transfer apertium-hye-eng.hye-eng.t3x hye-eng.t3x.bin
	apertium-gen-modes modes.xml

