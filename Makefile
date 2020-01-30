all:
	happy -gca ParHiyapal.y
	alex -g LexHiyapal.x
	ghc -dynamic --make TestHiyapal.hs -o TestHiyapal

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi

distclean: clean
	-rm -f DocHiyapal.* LexHiyapal.* ParHiyapal.* LayoutHiyapal.* SkelHiyapal.* PrintHiyapal.* TestHiyapal.* AbsHiyapal.* TestHiyapal ErrM.* SharedString.* ComposOp.* hiyapal.dtd XMLHiyapal.* Makefile*
	
