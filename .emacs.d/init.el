(package-initialize)
(require 'exwm)
(require 'exwm-config)

(exwm-config-default)

(setq exwm-input-global-key '(, ("kbd s-&") .
      (lambda (command)
	(interactive(list(read-shell-command "$ ")))
	(start-process-shell-command command nil command))))
