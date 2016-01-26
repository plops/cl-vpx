;; sbcl --eval '(ql:quickload "cl-vpx")'
(cc-flags "-lvpx")


(include "vpx/vpx_codec.h")
(include "vpx/vp8dx.h")


(cenum vpx_codec_err_t
       ((:vpx-codec-ok "VPX_CODEC_OK"))
       ((:vpx-codec-error "VPX_CODEC_ERROR")))
