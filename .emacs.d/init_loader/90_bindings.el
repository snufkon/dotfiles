
;;;
;;; general
;;;

;; 1文字削除
(bind-key "C-h" 'delete-backward-char)

;; テキストのスケールを拡大、縮小
(bind-key "C-+" 'text-scale-increase)
(bind-key "C--" 'text-scale-decrease)

;; ウィンドウ最大化トグル
(bind-key "<C-return>" 'my-toggle-fullscreen)

;; ウィンドウ分割
(bind-key "C-t" 'other-window-or-split)

;;; helm
(bind-key "C-h" 'delete-backward-char helm-map)
(bind-key "C-h" 'delete-backward-char helm-find-files-map)

;; (bind-key "C-h" 'delete-backward-char projectile-mode-map)

(bind-key "C-;" 'helm-mini)
(bind-key "M-x" 'helm-M-x)
(bind-key "C-x b" 'helm-mini)
(bind-key "C-x C-b" 'helm-buffers-list)

;; 最近開いたファイルからファイルを開く
(bind-key "C-2" 'helm-recentf)

;; プロジェクトからファイルを開く
(bind-key "M-o" 'helm-projectile)
;; (require 'helm)
;; (bind-key "C-h" 'delete-backward-char 'helm-map)
;; (require 'helm)
;; (bind-key "C-h" nil helm-map)
;;; (bind-key "C-h" nil helm-map)


;; open-junk-file
(bind-key "C-x j" 'open-junk-file)

;;; expand-region
(bind-key "C-]" 'er/expand-region)
(bind-key "C-M-]" 'er/contract-region)

;;; multiple-cursors
(bind-key "C-S-c C-S-c" 'mc/edit-lines)
(bind-key "C->" 'mc/mark-next-like-this)
(bind-key "C-<" 'mc/mark-previous-like-this)
(bind-key "C-c C-<" 'mc/mark-all-like-this)

;;; smartparens
(bind-keys :map sp-keymap
           ("C-d"       . sp-delete-char)
           ("C-<right>" . sp-forward-slurp-sexp)
           ("C-<left>"  . sp-forwar-barf-sexp)
           ("C-M-k"     . sp-kill-sexp)           
           )

;; (bind-key "C-'" 'sp-delet'-keymap)
;; ;;(define-key sp-keymap (kbd "<delete>") 'sp-delete-char)
;; (define-key sp-keymap (kbd "C-<right>") )
;; (define-key sp-keymap (kbd "C-<left>") 'sp-forward-barf-sexp)

;; (bind-key "C-M-k" 'sp-kill-sexp sp-keymap)


;; (gheohgeohge)

;; (bind-keys :map sp-keymap
;;            ("C-d"       . sp-delete-char)
;;            ("C-<right>" . sp-forward-slurp-sexp)
;;            ("C-<left>"  . sp-forwar-barf-sexp)
           
;;            )

;; (bind-key "C-;" 'refresh-and-runtests)

(bind-key "C-c r" 'cider-repl-reset)
(bind-key "C-S-f" 'cider-format-buffer)



