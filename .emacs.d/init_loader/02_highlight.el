;; カーソル行をハイライト
(defface my-hl-line-face
  '((((class color)
      (background dark))    ;; 背景色が暗い色のとき
     (:background "#222244"))
    (((class color)
      (background light))    ;; 背景色が明るい色のとき
     (:background "LightSteelBlue1"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode t)


;; 括弧の範囲内をハイライト
(show-paren-mode t)
(setq show-paren-delay 0)
;; (setq show-paren-style 'expression)
(set-face-attribute 'show-paren-match-face nil
                    :background nil :foreground nil
                    :underline "#ffff00" :weight 'extra-bold)

;; 括弧の範囲色
;; (set-face-background 'show-paren-match-face "#500")

;; 選択領域の色
;; (set-face-background 'region "#888")


