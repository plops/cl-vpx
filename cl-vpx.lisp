;;;; cl-vpx.lisp

(in-package #:cl-vpx)

(defcenum vpx_codec_err_t
  (:vpx-codec-ok 0)
  :vpx-codec-error
  :vpx-codec-mem-error 
  :vpx-codec-abi-mismatch 
  :vpx-codec-incapable 
  :vpx-codec-unsup-bitstream 
  :vpx-codec-unsup-feature 
  :vpx-codec-corrupt-frame 
  :vpx-codec-invalid-param 
  :vpx-codec-list-end )

(cffi:defcstruct (vpx_codec_ctx_t :size 56))
(cffi:defcstruct (vpx_codec_dec_cfg_t :size 12))
(cffi:defctype vpx_codec_flags_t :int64)
(cl:defconstant vpx-decoder-abi-version 9)


(format t "~a~%" vpx-decoder-api-version)

#+nil
(cffi:defcfun (%vpx-codec-dec-init-ver "vpx_codec_dec_init_ver") vpx_codec_err_t
  (ctx (:pointer vpx_codec_ctx_t))
  (iface pvpx_codec_iface_t)
  (cfg (const (:pointer vpx_codec_dec_cfg_t)))
  (flags vpx_codec_flags_t)
  (ver int))
