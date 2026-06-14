archlinux-ttf-sh:
	# ttf-syzpori-hinted
	cd ttf-syzpori-hinted/archlinux/ && \
	makepkg -sf 
	cd ttf-syzpori-hinted/archlinux/ && \
	mv ttf-syzpori-* ../../output/

archlinux-cf:
	# custom-fontconfig
	# mkdir custom-fontconfig/archlinux/srcS/
	cp custom-fontconfig/fonts.conf custom-fontconfig/archlinux/src/
	cd custom-fontconfig/archlinux/ && \
	makepkg -sf 
	cd custom-fontconfig/archlinux/ && \
	mv custom-fontconfig-* ../../output/

archlinux-gds:
	# gsettings-desktop-schemas
	cd gsettings-desktop-schemas/archlinux/ && \
	makepkg -sf 
	cd gsettings-desktop-schemas/archlinux && \
	mv gsettings-*.tar.zst ../../output/

archlinux-cs:
	# custom-skel
	cd custom-skel/archlinux/ && \
	makepkg -sf 
	cd custom-skel/archlinux && \
	mv custom-skel-* ../../output/

archlinux-cw:
	# custom-wallpapers
	cd custom-wallpapers/archlinux/ && \
	makepkg -sf 
	cd custom-wallpapers/archlinux && \
	mv custom-wallpapers-* ../../output/

archlinux-cd:
	# custom-desktops
	cd custom-desktops/archlinux/ && \
	makepkg -sf 
	cd custom-desktops/archlinux && \
	mv custom-desktops-* ../../output/