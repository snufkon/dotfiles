;;;; コメントスタイル
;;;;
;;;; 主要な部分のヘッダ: セミコロン x 4
;;;; 関数定義のヘッダ: セミコロン x 3
;;;; コメント: セミコロン x 2
;;;; 行末コメント: セミコロン x 1
;;;; ref: http://d.hatena.ne.jp/rubikitch/20100201/elispsyntax

;;;; Cask
(require 'cask "/usr/local/share/emacs/site-lisp/cask.el")
(cask-initialize)

;;;; Set theme
(load-theme 'deeper-blue t)
;; (load-theme 'cyberpank t)
;; (load-theme 'manoj-dark t)

;;;; init-loader
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(init-loader-show-log-after-init (quote error-only))
 '(js2-basic-offset 2))

(init-loader-load (concat user-emacs-directory "init_loader"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
