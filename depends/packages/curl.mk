package=curl
$(package)_version=7.48.0
$(package)_download_path=https://curl.haxx.se/download/curl-7.48.0.tar.bz2
$(package)_file_name=$(package)-$($(package)_version).tar.bz2
$(package)_sha256_hash=864e7819210b586d42c674a1fdd577ce75a78b3dda64c63565abe5aefd72c753

define $(package)_set_vars
  $(package)_config_opts=--disable-shared
  $(package)_config_opts_linux=--disable-shared
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) install
endef

define $(package)_postprocess_cmds
  
endef
