all:

install:
	mkdir -p $(DESTDIR)/opt/hashstack/programs/
	mkdir -p $(DESTDIR)/opt/hashstack/agent/plugins/
	cp hashcat-cli.json $(DESTDIR)/opt/hashstack/agent/plugins/
	7z x -o$(DESTDIR)/opt/hashstack/programs/ hashcat-2.00.7z
	mv $(DESTDIR)/opt/hashstack/programs/hashcat-2.00 $(DESTDIR)/opt/hashstack/programs/hashcat-cli
	cd $(DESTDIR)/opt/hashstack/programs/hashcat-cli && rm -rf *32* *.exe *.app examples/ docs/ charsets/ tables/ rules/ salts/

