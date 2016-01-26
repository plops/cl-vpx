;;;; cl-vpx.lisp

(in-package #:cl-vpx)
(format t "~a~%" cl-vpx-internal::vpx-decoder-api-version)

#+nil
(cffi:defcfun (%vpx-codec-dec-init-ver "vpx_codec_dec_init_ver") vpx_codec_err_t
  (ctx (:pointer vpx_codec_ctx_t))
  (iface pvpx_codec_iface_t)
  (cfg (const (:pointer vpx_codec_dec_cfg_t)))
  (flags vpx_codec_flags_t)
  (ver int))
