archlinux-ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/archlinux/ && \
	makepkg -sf 
	cd ttf-syzpori-hinted/archlinux/ && \
	mv ttf-syzpori-* ../../output/

debian-ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/ && \
	./debian/prepare.sh && \
	dpkg-buildpackage -us -uc
	mv ttf-syzpori-hinted_* output/

archlinux-custom-fontconfig:
	# mkdir custom-fontconfig/archlinux/srcS/
	cp custom-fontconfig/fonts.conf custom-fontconfig/archlinux/src/
	cd custom-fontconfig/archlinux/ && \
	makepkg -sf 
	cd custom-fontconfig/archlinux/ && \
	mv custom-fontconfig-* ../../output/

debian-custom-fontconfig:
	cp custom-fontconfig/fonts.conf custom-fontconfig/local.conf
	cd custom-fontconfig/ && \
	dpkg-buildpackage -us -uc && \
	rm local.conf
	mv custom-fontconfig_* output/

archlinux-gds:
	cd gsettings-desktop-schemas/archlinux/ && \
	makepkg -sf 
	cd gsettings-desktop-schemas/archlinux && \
	mv gsettings-* ../../output/