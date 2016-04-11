package=curl
$(package)_version=7.48.0
$(package)_download_path=https://curl.haxx.se/download
$(package)_file_name=$(package)-$($(package)_version).tar.bz2
$(package)_sha256_hash=864e7819210b586d42c674a1fdd577ce75a78b3dda64c63565abe5aefd72c753

define $(package)_set_vars
  $(package)_config_opts=--disable-shared --with-ssl=$(host_prefix)/etc/openssl --prefix=$($(package)_staging_prefix_dir)
endef

define $(package)_config_cmds
  ./configure $($(package)_config_opts)
endef

define $(package)_build_cmds
  $(MAKE) 
endef

define $(package)_stage_cmds
	$(MAKE) install
endef

define $(package)_postprocess_cmds
  
endef
