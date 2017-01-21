all:
	swig -go -cgo -c++ -intgosize 64 -I$(EIGEN_PATH) -v eigon.i
	#swig -python -c++ -I$(EIGEN_PATH) -v eigon.i

clean:
	-rm -rf eigon.go eigon_wrap.cxx
