;;;;
;;;; helm
;;;; 

;; バッファの並び順の違和感を取り除く
;; ref: http://rubikitch.com/tag/helm-%E3%83%90%E3%83%83%E3%83%95%E3%82%A1%E9%81%B8%E6%8A%9E-%E4%B8%A6%E3%81%B3%E9%A0%86/
(defadvice helm-buffers-sort-transformer (around ignore activate)
  (setq ad-return-value (ad-get-arg 0)))

