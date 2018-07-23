PICS := $(wildcard deepin/*.jpg deepin/*.jpeg deepin/*.png deepin-private/*.jpg deepin-private/*.jpeg deepin-private/*.png deepin-community/*.jpg deepin-community/*.jpeg deepin-community/*.png)

define md5sum
$(shell echo -n /usr/share/wallpapers/deepin/$(1) | md5sum | awk '{print $$1}')
endef

all: prepare $(addprefix blur/, ${PICS})

prepare: 
	@mkdir -p image-blur

blur/%: 
	/usr/lib/deepin-api/image-blur --sigma 30 $(subst blur/,,$@) image-blur/$(call md5sum,${@F}).jpg

clean:
	rm -rf image-blur
