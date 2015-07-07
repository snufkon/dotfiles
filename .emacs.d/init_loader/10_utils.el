
;; ウィンドウの分割/移動をいい感じにする
;; ref: http://d.hatena.ne.jp/rubikitch/20100210/emacs
(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (split-window-horizontally))
  (other-window 1))


;; ウィンドウ最大化トグル
;; ref: http://blog.livedoor.jp/tek_nishi/search?q=my-toggle
(defun my-toggle-fullscreen ()
 "Toggle fullscreen."
 (interactive)
 (if (eq (frame-parameter nil 'fullscreen) 'maximized)
		 (set-frame-parameter nil 'fullscreen nil)
   (set-frame-parameter nil 'fullscreen 'maximized)))
