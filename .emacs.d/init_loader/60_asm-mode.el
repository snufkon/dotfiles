
;; .asm ファイルに対して asm-mode を設定しない
(setq auto-mode-alist
      (delete (assoc "\\.asm\\'" auto-mode-alist) auto-mode-alist))

;; ref: http://emacs.stackexchange.com/questions/5348/better-indentation-and-navigation-in-assembly-source-code
;; (require 'asm-mode)
;; (add-hook 'asm-mode-hook (lambda ()
;;                            (setq indent-tabs-mode nil) ; use spaces to indent 
;;                            (setq tab-stop-list (number-sequence 2 60 2))))

;; (define-key asm-mode-map (kbd "<ret>") 'newline-and-indent)
;; (define-key asm-mode-map (kbd "M-.") 'helm-etags-select)
;; (define-key asm-mode-map (kbd "<tab>") 'company-complete)
