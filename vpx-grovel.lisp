;; sbcl --eval '(ql:quickload "cl-vpx")'
(cc-flags "-lvpx")


(include "vpx/vpx_codec.h")
(include "vpx/vp8dx.h")


(cenum vpx_codec_err_t
       ((:vpx-codec-ok "VPX_CODEC_OK"))
       ((:vpx-codec-error "VPX_CODEC_ERROR"))
       ((:vpx-codec-mem-error "VPX_CODEC_MEM_ERROR"))
       ((:vpx-codec-abi-mismatch "VPX_CODEC_ABI_MISMATCH"))
       ((:vpx-codec-incapable "VPX_CODEC_INCAPABLE"))
       ((:vpx-codec-unsup-bitstream "VPX_CODEC_UNSUP_BITSTREAM"))
       ((:vpx-codec-unsup-feature "VPX_CODEC_UNSUP_FEATURE"))
       ((:vpx-codec-corrupt-frame "VPX_CODEC_CORRUPT_FRAME"))
       ((:vpx-codec-invalid-param "VPX_CODEC_INVALID_PARAM"))
       ((:vpx-codec-list-end "VPX_CODEC_LIST_END")))
