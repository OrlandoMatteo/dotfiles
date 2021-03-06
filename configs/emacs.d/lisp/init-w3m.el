;;; init-w3m.el -- For all of your web browsing needs.
;;; Commentary:
;;; Code:

(use-package w3m
  :ensure t
  :commands w3m
  :config
  (setq w3m-user-agent (concat "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; "
                               "HTC_Pyramid Build/GRI40) "
                               "AppleWebKit/533.1 (KHTML, like Gecko) "
                               "Version/4.0 Mobile Safari/533."))

  (add-hook 'w3m-mode-hook (lambda ()
                             (define-key w3m-mode-map (kbd "d") (lambda ()
                                                                  (interactive)
                                                                  (w3m-scroll-up
                                                                   (/ (window-height) 2))))
                             (define-key w3m-mode-map (kbd "u") (lambda ()
                                                                  (interactive)
                                                                  (w3m-scroll-down
                                                                   (/ (window-height) 2)))))))

(provide 'init-w3m)
;;; init-w3m.el ends here
