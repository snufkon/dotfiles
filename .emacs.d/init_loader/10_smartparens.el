;;; smartparens
(smartparens-global-mode t)
(smartparens-strict-mode t)

;; clojure-mode でシングルクォートは pair から外す
(sp-local-pair 'clojure-mode "'" nil :actions nil)
(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)
(sp-local-pair 'cider-repl-mode "'" nil :actions nil)

(show-smartparens-global-mode nil)
