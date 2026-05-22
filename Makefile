ttf-syzpori-hinted:
	cd ttf-syzpori-hinted/archlinux/ && \
	makepkg -sf 
	mkdir output
	cd ttf-syzpori-hinted/archlinux/ && \
	cp -r ttf-syzpori-* ../../output/
