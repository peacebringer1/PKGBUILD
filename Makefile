archlinux-ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/archlinux/ && \
	makepkg -sf 
	cd ttf-syzpori-hinted/archlinux/ && \
	mv ttf-syzpori-* ../../output/

archlinux-custom-fontconfig:
	# mkdir custom-fontconfig/archlinux/srcS/
	cp custom-fontconfig/fonts.conf custom-fontconfig/archlinux/src/
	cd custom-fontconfig/archlinux/ && \
	makepkg -sf 
	cd custom-fontconfig/archlinux/ && \
	mv custom-fontconfig-* ../../output/

archlinux-gds:
	cd gsettings-desktop-schemas/archlinux/ && \
	makepkg -sf 
	cd gsettings-desktop-schemas/archlinux && \
	mv gsettings-* ../../output/