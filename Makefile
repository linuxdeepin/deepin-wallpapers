SYSTEMID := $(shell cat /etc/os-release | grep '^ID=' | cut -d'=' -f2)

PICS := $(wildcard deepin/*.jpg deepin/*.jpeg deepin/*.png deepin-solidwallpapers/*.png)

ifeq ($(USE_NONFREEPIC), 1)
	PICS := $(wildcard nonfree/deepin-private/*.jpg nonfree/unsplash.com/*.jpg $(PICS))
endif

define md5sum
$(shell echo -n /usr/share/wallpapers/deepin/$(1) | md5sum | awk '{print $$1}')
endef

all: prepare $(addprefix blur/, ${PICS})

prepare: 
	@if [ "$(SYSTEMID)" = "uos" ]; then \
		cp -r platform/uos/* deepin/; \
	else \
		cp -r platform/deepin/* deepin/; \
	fi

	@mkdir -p image-blur

blur/%: 
	/usr/lib/deepin-api/image-blur --sigma 30 $(subst blur/,,$@) image-blur/$(call md5sum,${@F}).jpg

clean:
	rm -rf image-blur
