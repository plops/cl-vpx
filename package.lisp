;;;; package.lisp

(defpackage #:cl-vpx-internal
  (:use)
  (:export #:vpx-decoder-api-version
	   #:vpx_codec_flags_t
	   #:pvpx_codec_iface_t
	   #:vpx_codec_dec_cfg_t
	   #:vpx_codec_ctx_t))

(defpackage #:cl-vpx
  (:use #:cl #:cffi))

