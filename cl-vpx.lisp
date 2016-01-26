;;;; cl-vpx.lisp

(in-package #:cl-vpx)

(cffi:defcfun (%vpx-codec-dec-init-ver "vpx_codec_dec_init_ver") vpx_codec_err_t
  (ctx (* vpx_codec_ctx_t))
  (iface (* vpx_codec_iface_t))
  (cfg (const (* vpx_codec_dec_cfg_t)))
  (flags vpx_codec_flags_t)
  (ver int))
