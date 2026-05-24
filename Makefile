archlinux-ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/archlinux/ && \
	makepkg -sf 
	mkdir output
	cd ttf-syzpori-hinted/archlinux/ && \
	cp -r ttf-syzpori-* ../../output/

debian-ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/ && \
	dpkg-buildpackage -us -uc
	mv ttf-syzpori-hinted_* output/