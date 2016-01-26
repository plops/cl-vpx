;;;; cl-vpx.lisp

(in-package #:cl-vpx)

;; (defcenum vpx_codec_err_t
;;   (:vpx-codec-ok 0)
;;   :vpx-codec-error
;;   :vpx-codec-mem-error 
;;   :vpx-codec-abi-mismatch 
;;   :vpx-codec-incapable 
;;   :vpx-codec-unsup-bitstream 
;;   :vpx-codec-unsup-feature 
;;   :vpx-codec-corrupt-frame 
;;   :vpx-codec-invalid-param 
;;   :vpx-codec-list-end )

;; (cffi:defcstruct (vpx_codec_ctx_t :size 56))
;; (cffi:defcstruct (vpx_codec_dec_cfg_t :size 12))
;; (cffi:defctype vpx_codec_flags_t :int64)
;; (defconstant +vpx-decoder-abi-version+ 9)

(defcfun (%vpx-codec-dec-init-ver "vpx_codec_dec_init_ver")
    vpx_codec_err_t
  (ctx (:pointer vpx_codec_ctx_t))
  (iface pvpx_codec_iface_t)
  (cfg (:pointer vpx_codec_dec_cfg_t)) ;; const
  (flags vpx_codec_flags_t)
  (ver :int))


(defcfun (%vpx-video-reader-open "vpx_video_reader_open") (:pointer VpxVideoReader) )
(defcfun (%vpx-video-reader-getinfo "vpx_video_reader_get_info") (:pointer VpxVideoInfo))
(defcfun (%get-vpx-decoder-by-fourcc "get_vpx_decoder_by_fourcc") (:pointer VpxInterface))
(defcfun (%vpx_codec_iface_name  "vpx-codec-iface-name"))

;; vpx_video_reader_read_frame

;; vpx_codec_iter_t
;; vpx_image_
;; vpx_video_reader_get_frame
;; vpx_codec_decode
;; vpx_codec_get_frame
;; vpx_img_write
;; vpx_codec_destroy
;; vpx_video_reader_close
