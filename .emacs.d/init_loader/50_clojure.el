;;;;
;;;; Clojure
;;;;
;;;; ref: http://qiita.com/xorphitus/items/a1f433fa6ba2489ff9cf


;;;
;;; cider
;;;

(add-hook 'clojure-mode-hook 'cider-mode)

;; mini bufferに関数の引数を表示させる
(add-hook 'cider-mode-hook #'eldoc-mode)

;; ログメッセージを表示する
(setq nrepl-log-message t)

;; 'C-x b' した時に *nrepl-connection* と *nrepl-server* のbufferを一覧に表示しない
(setq nrepl-hide-special-buffers t)

;; repl 起動時の自動バッファ表示をオフにする
(setq cider-repl-pop-to-buffer-on-connect nil)

;; font-lock に clojure-mode を利用する
(setq cider-repl-use-clojure-font-lock t)

;; repl の履歴をファイルに保存
(setq cider-repl-history-file "~/.emacs.d/cider-repl-history")

;; 履歴の数を変更する
(setq cider-repl-history-size 1000) ; the default is 500

;; repl で smartparens を利用する
(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

;; repl で rainbow-delimiters-mode を有効にする
(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

;; RELPのbuffer名を 'project名:nREPLのport番号' と表示する
(setq nrepl-buffer-name-show-port t)

;; repl で (user/reset) を実行する
;; ref: https://github.com/juxt/jig
(defun cider-repl-reset ()
  (interactive)
  (save-some-buffers t)
  (with-current-buffer (cider-current-repl-buffer)
    (goto-char (point-max))
    (insert "(#'reloaded.repl/reset)")
    (cider-repl-return)))


;; auto-complete の設定
;; ref: https://github.com/clojure-emacs/ac-cider
;; (add-hook 'cider-mode-hook 'ac-flyspell-workaround)
;; (add-hook 'cider-mode-hook 'ac-cider-setup)
;; (add-hook 'cider-repl-mode-hook 'ac-cider-setup)
;; (eval-after-load "auto-complete"
;;   '(progn
;;      (add-to-list 'ac-modes 'cider-mode)
;;      (add-to-list 'ac-modes 'cider-repl-mode)))


;;;
;;; paredit
;;;

(add-hook 'clojure-mode-hook #'enable-paredit-mode)
(add-hook 'cider-repl-mode-hook #'enable-paredit-mode)

;;;
;;; misc
;;; 


;;; compojure 用のインデント設定
(add-hook 'clojure-mode-hook
          (lambda()
            (define-clojure-indent
              
              ;; Compojure
              (defroutes 'defun)
              (GET 2)
              (POST 2)
              (PUT 2)
              (DELETE 2)
              (HEAD 2)
              (ANY 2)
              (context 2)

              ;; Om
              (root 'defun)
              (build 'defun)
              (build-all 'defun)
              (display-name 'defun)
              (init-state 'defun)
              (will-mount 'defun)
              (did-mount 'defun)
              (will-unmount 'defun)
              (render 'defun)
              (render-state 'defun)
              (should-update 'defun)
              (will-update 'defun)
              (will-receive-props 'defun)
              (did-update 'defun)
              (div 'defun)
              (input 'defun)
              (ul 'defun)
              (li 'defun)

              ; Midje
              (facts 'defun)
              (fact 'defun)
                            
              
              )))



;; ;; electric-indent モードを off にする
;; (add-hook 'clojure-mode-hook '(lambda ()
;;                                 (electric-indent-local-mode -1)))


;; 括弧の色を強調する設定
(require 'cl-lib)
(require 'color)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(defun rainbow-delimiters-using-stronger-colors ()
  (interactive)
  (cl-loop
   for index from 1 to rainbow-delimiters-max-face-count
   do
   (let ((face (intern (format "rainbow-delimiters-depth-%d-face" index))))
    (cl-callf color-saturate-name (face-foreground face) 30))))
(add-hook 'emacs-startup-hook 'rainbow-delimiters-using-stronger-colors)
