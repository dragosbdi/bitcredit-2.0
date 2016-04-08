package=sqlite3
$(package)_version=3120000
$(package)_download_path=https://www.sqlite.org/2016/sqlite-autoconf-3120000.tar.gz
$(package)_file_name=sqlite-autoconf-$($(package)_version).tar.gz
$(package)_sha256_hash=53ecdbb5287af673eca3710c5f6c2305e73bb2d034f2a28770bea2be92ed269e

define $(package)_set_vars
  $(package)_config_opts=
  $(package)_config_opts_linux=
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
