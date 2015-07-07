;; ツールバー非表示　
(tool-bar-mode -1)

;; スタートアップ非表示
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; スクロールバー非表示
(set-scroll-bar-mode nil)

;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; 行末の空白を強調表示
;; (setq-default show-trailing-whitespace t)
;; (set-face-background 'trailing-whitespace "#b14770")

;; タブをスペースで扱う
(setq-default indent-tabs-mode nil)

;; フレームの透明度
(set-frame-parameter (selected-frame) 'alpha '(0.90))

;; モードラインに行番号表示
(line-number-mode t)

;; モードラインに列番号表示
(column-number-mode t)

;; スクリーンの最大化
;; (set-frame-parameter nil 'fullscreen 'maximized)

;; yes or no を y or n
(fset 'yes-or-no-p 'y-or-n-p)

;; バックアップを残さない
(setq make-backup-files nil)

;; 1行ずつスクロール
 (setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t) ;; shell-mode

;; 領域選択時にキー入力で選択を削除
(delete-selection-mode t)

;; electric-indent-mode をオフにする
(electric-indent-mode 0)

;; shell からパスを引き継ぐように設定する
(exec-path-from-shell-initialize)

;; ファイルの変更を自動でバッファに適用する
(global-auto-revert-mode t)

;; 選択領域の色を設定
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "black")
