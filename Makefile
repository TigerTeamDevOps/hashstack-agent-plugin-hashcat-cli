all:

install:
	mkdir -p $(DESTDIR)/opt/hashstack/programs/
	mkdir -p $(DESTDIR)/opt/hashstack/agent/plugins/
	cp hashcat-cli.json $(DESTDIR)/opt/hashstack/agent/plugins/
	7z x -o$(DESTDIR)/opt/hashstack/programs/ hashcat-0.47.7z
	mv $(DESTDIR)/opt/hashstack/programs/hashcat-0.47 $(DESTDIR)/opt/hashstack/programs/hashcat-cli
	cd $(DESTDIR)/opt/hashstack/programs/hashcat-cli && printf "\x2f\x00\x00\x00" >eula.accepted && rm -rf *32* *.exe *.app examples/ docs/ charsets/ tables/ rules/ salts/

