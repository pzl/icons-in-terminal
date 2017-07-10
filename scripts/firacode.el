
;; Taken from https://gist.github.com/mordocai/50783defab3c3d1650e068b4d1c91495
;; Modified to point to icons-in-terminal codepoints

(defconst firacode-codepoint-start #xedff)

;;; Fira code
;; This works when using emacs --daemon + emacsclient
(add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xedff . #Xee6d) "icons-in-terminal")))
;; This works when using emacs without server/client
(set-fontset-font t '(#Xedff . #Xee6e) "icons-in-terminal")
;; I haven't found one statement that makes both of the above situations work, so I use both for now

(defconst fira-code-font-lock-keywords-alist
  (mapcar (lambda (regex-char-pair)
            `(,(car regex-char-pair)
              (0 (prog1 ()
                   (compose-region (match-beginning 1)
                                   (match-end 1)
                                   ;; The first argument to concat is a string containing a literal tab
                                   ,(concat "	" (list (decode-char 'ucs (cadr regex-char-pair)))))))))
          `(("\\(www\\)"                   ,(+ firacode-codepoint-start 0))
	    ("[^/]\\(\\*\\*\\)[^/]"        ,(+ firacode-codepoint-start 1))
	    ("\\(\\*\\*\\*\\)"             ,(+ firacode-codepoint-start 2))
	    ("\\(\\*\\*/\\)"               ,(+ firacode-codepoint-start 3))
	    ("\\(\\*>\\)"                  ,(+ firacode-codepoint-start 4))
	    ("[^*]\\(\\*/\\)"              ,(+ firacode-codepoint-start 5))
	    ("\\(\\\\\\\\\\)"              ,(+ firacode-codepoint-start 6))
	    ("\\(\\\\\\\\\\\\\\)"          ,(+ firacode-codepoint-start 7))
	    ("\\({-\\)"                    ,(+ firacode-codepoint-start 8))
	    ("\\(\\[\\]\\)"                ,(+ firacode-codepoint-start 9))
	    ("\\(::\\)"                    ,(+ firacode-codepoint-start 10))
	    ("\\(:::\\)"                   ,(+ firacode-codepoint-start 11))
	    ("[^=]\\(:=\\)"                ,(+ firacode-codepoint-start 12))
	    ("\\(!!\\)"                    ,(+ firacode-codepoint-start 13))
	    ("\\(!=\\)"                    ,(+ firacode-codepoint-start 14))
	    ("\\(!==\\)"                   ,(+ firacode-codepoint-start 15))
	    ("\\(-}\\)"                    ,(+ firacode-codepoint-start 16))
	    ("\\(--\\)"                    ,(+ firacode-codepoint-start 17))
	    ("\\(---\\)"                   ,(+ firacode-codepoint-start 18))
	    ("\\(-->\\)"                   ,(+ firacode-codepoint-start 19))
	    ("[^-]\\(->\\)"                ,(+ firacode-codepoint-start 20))
	    ("\\(->>\\)"                   ,(+ firacode-codepoint-start 21))
	    ("\\(-<\\)"                    ,(+ firacode-codepoint-start 22))
	    ("\\(-<<\\)"                   ,(+ firacode-codepoint-start 23))
	    ("\\(-~\\)"                    ,(+ firacode-codepoint-start 24))
	    ("\\(#{\\)"                    ,(+ firacode-codepoint-start 25))
	    ("\\(#\\[\\)"                  ,(+ firacode-codepoint-start 26))
	    ("\\(##\\)"                    ,(+ firacode-codepoint-start 27))
	    ("\\(###\\)"                   ,(+ firacode-codepoint-start 28))
	    ("\\(####\\)"                  ,(+ firacode-codepoint-start 29))
	    ("\\(#(\\)"                    ,(+ firacode-codepoint-start 30))
	    ("\\(#\\?\\)"                  ,(+ firacode-codepoint-start 31))
	    ("\\(#_\\)"                    ,(+ firacode-codepoint-start 32))
	    ("\\(#_(\\)"                   ,(+ firacode-codepoint-start 33))
	    ("\\(\\.-\\)"                  ,(+ firacode-codepoint-start 34))
	    ("\\(\\.=\\)"                  ,(+ firacode-codepoint-start 35))
	    ("\\(\\.\\.\\)"                ,(+ firacode-codepoint-start 36))
	    ("\\(\\.\\.<\\)"               ,(+ firacode-codepoint-start 37))
	    ("\\(\\.\\.\\.\\)"             ,(+ firacode-codepoint-start 38))
	    ("\\(\\?=\\)"                  ,(+ firacode-codepoint-start 39))
	    ("\\(\\?\\?\\)"                ,(+ firacode-codepoint-start 40))
	    ("\\(;;\\)"                    ,(+ firacode-codepoint-start 41))
	    ("\\(/\\*\\)"                  ,(+ firacode-codepoint-start 42))
	    ("\\(/\\*\\*\\)"               ,(+ firacode-codepoint-start 43))
	    ("\\(/=\\)"                    ,(+ firacode-codepoint-start 44))
	    ("\\(/==\\)"                   ,(+ firacode-codepoint-start 45))
	    ("\\(/>\\)"                    ,(+ firacode-codepoint-start 46))
	    ("\\(//\\)"                    ,(+ firacode-codepoint-start 47))
	    ("\\(///\\)"                   ,(+ firacode-codepoint-start 48))
	    ("\\(&&\\)"                    ,(+ firacode-codepoint-start 49))
	    ("\\(||\\)"                    ,(+ firacode-codepoint-start 50))
	    ("\\(||=\\)"                   ,(+ firacode-codepoint-start 51))
	    ("[^|]\\(|=\\)"                ,(+ firacode-codepoint-start 52))
	    ("\\(|>\\)"                    ,(+ firacode-codepoint-start 53))
	    ("\\(\\^=\\)"                  ,(+ firacode-codepoint-start 54))
	    ("\\(\\$>\\)"                  ,(+ firacode-codepoint-start 55))
	    ("\\(\\+\\+\\)"                ,(+ firacode-codepoint-start 56))
	    ("\\(\\+\\+\\+\\)"             ,(+ firacode-codepoint-start 57))
	    ("\\(\\+>\\)"                  ,(+ firacode-codepoint-start 58))
	    ("\\(=:=\\)"                   ,(+ firacode-codepoint-start 59))
	    ("[^!/]\\(==\\)[^>]"           ,(+ firacode-codepoint-start 60))
	    ("\\(===\\)"                   ,(+ firacode-codepoint-start 61))
	    ("\\(==>\\)"                   ,(+ firacode-codepoint-start 62))
	    ("[^=]\\(=>\\)"                ,(+ firacode-codepoint-start 63))
	    ("\\(=>>\\)"                   ,(+ firacode-codepoint-start 64))
	    ("\\(<=\\)"                    ,(+ firacode-codepoint-start 65))
	    ("\\(=<<\\)"                   ,(+ firacode-codepoint-start 66))
	    ("\\(=/=\\)"                   ,(+ firacode-codepoint-start 67))
	    ("\\(>-\\)"                    ,(+ firacode-codepoint-start 68))
	    ("\\(>=\\)"                    ,(+ firacode-codepoint-start 69))
	    ("\\(>=>\\)"                   ,(+ firacode-codepoint-start 70))
	    ("[^-=]\\(>>\\)"               ,(+ firacode-codepoint-start 71))
	    ("\\(>>-\\)"                   ,(+ firacode-codepoint-start 72))
	    ("\\(>>=\\)"                   ,(+ firacode-codepoint-start 73))
	    ("\\(>>>\\)"                   ,(+ firacode-codepoint-start 74))
	    ("\\(<\\*\\)"                  ,(+ firacode-codepoint-start 75))
	    ("\\(<\\*>\\)"                 ,(+ firacode-codepoint-start 76))
	    ("\\(<|\\)"                    ,(+ firacode-codepoint-start 77))
	    ("\\(<|>\\)"                   ,(+ firacode-codepoint-start 78))
	    ("\\(<\\$\\)"                  ,(+ firacode-codepoint-start 79))
	    ("\\(<\\$>\\)"                 ,(+ firacode-codepoint-start 80))
	    ("\\(<!--\\)"                  ,(+ firacode-codepoint-start 81))
	    ("\\(<-\\)"                    ,(+ firacode-codepoint-start 82))
	    ("\\(<--\\)"                   ,(+ firacode-codepoint-start 83))
	    ("\\(<->\\)"                   ,(+ firacode-codepoint-start 84))
	    ("\\(<\\+\\)"                  ,(+ firacode-codepoint-start 85))
	    ("\\(<\\+>\\)"                 ,(+ firacode-codepoint-start 86))
	    ("\\(<=\\)"                    ,(+ firacode-codepoint-start 87))
	    ("\\(<==\\)"                   ,(+ firacode-codepoint-start 88))
	    ("\\(<=>\\)"                   ,(+ firacode-codepoint-start 89))
	    ("\\(<=<\\)"                   ,(+ firacode-codepoint-start 90))
	    ("\\(<>\\)"                    ,(+ firacode-codepoint-start 91))
	    ("[^-=]\\(<<\\)"               ,(+ firacode-codepoint-start 92))
	    ("\\(<<-\\)"                   ,(+ firacode-codepoint-start 93))
	    ("\\(<<=\\)"                   ,(+ firacode-codepoint-start 94))
	    ("\\(<<<\\)"                   ,(+ firacode-codepoint-start 95))
	    ("\\(<~\\)"                    ,(+ firacode-codepoint-start 96))
	    ("\\(<~~\\)"                   ,(+ firacode-codepoint-start 97))
	    ("\\(</\\)"                    ,(+ firacode-codepoint-start 98))
	    ("\\(</>\\)"                   ,(+ firacode-codepoint-start 99))
	    ("\\(~@\\)"                    ,(+ firacode-codepoint-start 100))
	    ("\\(~-\\)"                    ,(+ firacode-codepoint-start 101))
	    ("\\(~=\\)"                    ,(+ firacode-codepoint-start 102))
	    ("\\(~>\\)"                    ,(+ firacode-codepoint-start 103))
	    ("[^<]\\(~~\\)"                ,(+ firacode-codepoint-start 104))
	    ("\\(~~>\\)"                   ,(+ firacode-codepoint-start 105))
	    ("\\(%%\\)"                    ,(+ firacode-codepoint-start 106))
	    ;;("\\(x\\)"                   ,(+ firacode-codepoint-start 107))
	    ("[^:=]\\(:\\)[^:=]"           ,(+ firacode-codepoint-start 108))
	    ("[^\\+<>]\\(\\+\\)[^\\+<>]"   ,(+ firacode-codepoint-start 109))
	    ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" ,(+ firacode-codepoint-start 110)))))

(defun add-fira-code-symbol-keywords ()
  (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

(add-hook 'prog-mode-hook
          #'add-fira-code-symbol-keywords)