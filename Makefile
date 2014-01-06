all: install_scripts

install_scripts:
	mkdir /tmp/scripts_tmp
	cp system/* /tmp/scripts_tmp
	cp common/* /tmp/scripts_tmp
	cp security/password/* /tmp/scripts_tmp
	cp security/secret-config/* /tmp/scripts_tmp
	rm /tmp/scripts_tmp/*.md
	chmod +x /tmp/scripts_tmp/*
	cp /tmp/scripts_tmp/* /usr/bin/
	rm -r /tmp/scripts_tmp

clean:
	rm -r /tmp/scripts_tmp
