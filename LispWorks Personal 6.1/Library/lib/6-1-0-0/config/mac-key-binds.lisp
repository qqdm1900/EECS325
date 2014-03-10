;; -*- Mode: Lisp; rcs-header: "$Header: /hope/lwhope1-cam/hope.0/compound/63/LISPeditor/RCS/mac-key-binds.lisp,v 1.10.4.1 2011/08/24 13:26:16 davef Exp $" -*-

;; Copyright (c) 1987--2012 LispWorks Ltd. All rights reserved.


(in-package "CL-USER")

;;; Key bindings for Mac emulation
;;; This file is loaded automatically the first time that Mac emulation is used. 

(flet ((mac-bind-key (command key &rest specific)
         (if specific
             (apply 'editor:bind-key command key specific)
           (editor:bind-key command key :global :mac))))

;; Interrupt gestures that override other bindings.
(editor:set-interrupt-keys '("Escape""Control-g" "Control-G")
                           :mac)

;; Include selection key bindings in Mac mode.
(let ((*selection-bind-key* #'mac-bind-key))
  (declare (special *selection-bind-key*))
  (load (current-pathname "selection-key-binds" "lisp")))

(mac-bind-key "Forward Character Using And Cancelling Selection"   "Right")
(mac-bind-key "Backward Character Using And Cancelling Selection"  "Left")
(mac-bind-key "Next Line Using And Cancelling Selection"           "Down")
(mac-bind-key "Previous Line Using And Cancelling Selection"       "Up")
(mac-bind-key "Forward Character Using And Cancelling Selection"   "Control-f")
(mac-bind-key "Backward Character Using And Cancelling Selection"  "Control-b")
(mac-bind-key "Next Line Using And Cancelling Selection"           "Control-n")
(mac-bind-key "Previous Line Using And Cancelling Selection"       "Control-p")

(mac-bind-key "Beginning of Line Cancelling Selection"              "Control-a")
(mac-bind-key "Beginning Of Line After Prompt Cancelling Selection" "Control-a"
                 :mode "Pc Execute")
(mac-bind-key "Beginning of Line Cancelling Selection"              "Control-Left")
(mac-bind-key "Beginning Of Line After Prompt Cancelling Selection" "Control-Left"
                 :mode "Pc Execute") 
(mac-bind-key "End of Line Cancelling Selection"       "Control-e")
(mac-bind-key "End of Line Cancelling Selection"       "Control-Right")
(mac-bind-key "Scroll Window Up Preserving Point"      "Control-Up")
(mac-bind-key "Scroll Window Down Preserving Point"    "Control-Down")

(mac-bind-key "Forward Word Cancelling Selection"       "Meta-Right")
(mac-bind-key "Backward Word Cancelling Selection"      "Meta-Left")

(mac-bind-key "Forward Form Cancelling Selection"       "Meta-Control-Right")
(mac-bind-key "Backward Form Cancelling Selection"      "Meta-Control-Left")
(mac-bind-key "End of Defun Cancelling Selection"       "Meta-Control-Next")
(mac-bind-key "Beginning of Defun Cancelling Selection" "Meta-Control-Prior")
(mac-bind-key "Backward Up List Cancelling Selection"   "Meta-Control-Up")
(mac-bind-key "Down List Cancelling Selection"          "Meta-Control-Down")

(mac-bind-key "Backward Character Extending Selection" "Shift-Left")
(mac-bind-key "Forward Character Extending Selection"  "Shift-Right")
(mac-bind-key "Previous Line Extending Selection"      "Shift-Up")
(mac-bind-key "Next Line Extending Selection"          "Shift-Down")

(mac-bind-key "Backward Word Extending Selection"      "Meta-Shift-Left")
(mac-bind-key "Forward Word Extending Selection"       "Meta-Shift-Right")

(mac-bind-key "Backward Form Extending Selection"      "Meta-Control-Shift-Left")
(mac-bind-key "Forward Form Extending Selection"       "Meta-Control-Shift-Right")
(mac-bind-key "End of Defun Extending Selection"       "Meta-Control-Shift-Next")
(mac-bind-key "Beginning of Defun Extending Selection" "Meta-Control-Shift-Prior")
(mac-bind-key "Backward Up List Extending Selection"   "Meta-Control-Shift-Up")
(mac-bind-key "Down List Extending Selection"          "Meta-Control-Shift-Down")

(mac-bind-key "Beginning of Line Extending Selection"  "Control-Shift-Left")
(mac-bind-key "Beginning of Line After Prompt Extending Selection"  "Control-Shift-Left"
                 :mode "Pc Execute")
(mac-bind-key "End of Line Extending Selection"        "Control-Shift-Right")

(mac-bind-key "Beginning of Buffer Preserving Point"         "Home")
(mac-bind-key "Beginning of Buffer Extending Selection"      "Shift-Home")

(mac-bind-key "End Of Buffer Preserving Point"               "End")
(mac-bind-key "End Of Buffer Extending Selection"            "Shift-End")

(mac-bind-key "Scroll Window Up Preserving Point"                   "Prior")
(mac-bind-key "Scroll Window Up Extending Selection"          "Shift-Prior")
(mac-bind-key "Scroll Window Up Moving Point"                  "Ctrl-Prior")

(mac-bind-key "Scroll Window Down Preserving Point"                  "Next")
(mac-bind-key "Scroll Window Down Extending Selection"         "Shift-Next")
(mac-bind-key "Scroll Window Down Moving Point"                 "Ctrl-Next")




(mac-bind-key "Open Line" "Control-o")

(mac-bind-key "Delete Next Character" "Control-d")

(mac-bind-key "Help" "Control-h")

(mac-bind-key "Un-Kill" "Control-y")
(mac-bind-key "Kill Region" "Control-w")
(mac-bind-key "Kill Line" "Control-k")

(mac-bind-key "Quoted Insert" "Control-q")

(mac-bind-key "Refresh Screen" "Control-l")

(mac-bind-key "Incremental Search" "Control-s")
(mac-bind-key "Reverse Incremental Search" "Control-r")

(mac-bind-key "Scroll Window Down Preserving Point" "Control-v")

;;; Prefix Arguments

(mac-bind-key "Set Prefix Argument" "Control-u")

;; Emacs Control-x bindings
(mac-bind-key "What Cursor Position" #("Control-x" "=")) ;MJS 10Jul93: added emacs-like binding
(mac-bind-key "Previous Page" #("Control-x" "["))
(mac-bind-key "Next Page" #("Control-x" "]"))
(mac-bind-key "Mark Page" #("Control-x" "Control-p"))
(mac-bind-key "Count Lines Page" #("Control-x" "l"))
(mac-bind-key "Mark Whole Buffer" #("Control-x" "h"))
(mac-bind-key "Exchange Point and Mark" #("Control-x" "Control-x"))
(mac-bind-key "Point to Register" #("Control-x" "/"))
(mac-bind-key "Jump to Register" #("Control-x" "j"))
(mac-bind-key "Copy to Register" #("Control-x" "x"))
(mac-bind-key "Insert Register" #("Control-x" "g"))
(mac-bind-key "Uppercase Region" #("Control-x" "Control-u"))
(mac-bind-key "Lowercase Region" #("Control-x" "Control-l"))
(mac-bind-key "Delete Blank Lines" #("Control-x" "Control-o") :global)
(mac-bind-key "Forward Kill Sentence" #("Control-x" "Delete"))
(mac-bind-key "Backward Kill Sentence" #("Control-x" "Backspace"))
(mac-bind-key "Undo" "Control-_")
(mac-bind-key "Undo" #("Control-x" "u"))
(mac-bind-key "Transpose Lines" #("Control-x" "Control-t"))
(mac-bind-key "Indent Rigidly" #("Control-x" "Tab"))
(mac-bind-key "Indent Rigidly" #("Control-x" "Control-i"))
(mac-bind-key "Set Fill Prefix" #("Control-x" "."))
(mac-bind-key "Set Fill Column" #("Control-x" "f"))
(mac-bind-key "Next Search Match" #("Control-x" "`"))
(mac-bind-key "Wfind File" #("Control-x" "Control-f"))
(mac-bind-key "Find Alternate File" #("Control-x" "Control-v"))
(mac-bind-key "Write File" #("Control-x" "Control-w"))
(mac-bind-key "Save File" #("Control-x" "Control-s"))
(mac-bind-key "Save All Files" #("Control-x" "s"))
(mac-bind-key "Save All Files and Exit" #("Control-x" "Control-c"))
(mac-bind-key "Insert File" #("Control-x" "i"))
(mac-bind-key "Select Buffer" #("Control-x" "b"))
(mac-bind-key "List Buffers" #("Control-x" "Control-b"))
(mac-bind-key "Kill Buffer" #("Control-x" "k"))
(mac-bind-key "Check Buffer Modified" #("Control-x" "~"))
(mac-bind-key "Toggle Buffer Read-Only" #("Control-x" "Control-q"))
(mac-bind-key "New Window" #("Control-x" "2")) 
(mac-bind-key "Next Ordinary Window" #("Control-x" "o"))
(mac-bind-key "Delete Window" #("Control-x" "0")) ; added 13/2/89 (MSM)
(mac-bind-key "Delete Other Windows" #("Control-x" "1"))
(mac-bind-key "Add Mode Word Abbrev" #("Control-x" "Control-a"))
(mac-bind-key "Add Global Word Abbrev" #("Control-x" "+"))
(mac-bind-key "Inverse Add Mode Word Abbrev" #("Control-x" "Control-h"))
(mac-bind-key "Inverse Add Global Word Abbrev" #("Control-x" "-"))
(mac-bind-key "Set Comment Column" #("Control-x" ";"))
(mac-bind-key "Evaluate Defun" "Kp-Enter")
(mac-bind-key "Evaluate Last Form" #("Control-x" "Control-e"))
(mac-bind-key "Define Keyboard Macro" #("Control-x" "("))
(mac-bind-key "End Keyboard Macro" #("Control-x" ")"))
(mac-bind-key "Last Keyboard Macro" #("Control-x" "e"))
(mac-bind-key "Keyboard Macro Query" #("Control-x" "q"))
(mac-bind-key "Illegal" #("Control-x" "b") :mode "Pc Echo")
(mac-bind-key "Illegal" #("Control-x" "Control-w") :mode "Pc Echo")
(mac-bind-key "Illegal" #("Control-x" "i") :mode "Pc Echo")
(mac-bind-key "Illegal" #("Control-x" "Control-s") :mode "Pc Echo")
(mac-bind-key "Illegal" #("Control-x" "Control-v") :mode "Pc Echo")
(mac-bind-key "Illegal" #("Control-x" "k") :mode "Pc Echo")
(mac-bind-key "Select Buffer Other Window" #("Control-x" "4" "b"))

;; Emacs Control-c bindings
(mac-bind-key "Kill Parse" #("Control-c" "Control-u") :mode "Pc Echo")
(mac-bind-key "Return Default" #("Control-c" "Control-r") :mode "Pc Echo")
(mac-bind-key "Insert Parse Default" #("Control-c" "Control-p") :mode "Pc Echo")
(mac-bind-key "Inspect Star" #("Control-c" "Control-i") :mode "Pc Execute")
(mac-bind-key "History Previous" #("Control-c" "Control-p") :mode "Pc Execute")
(mac-bind-key "History Next" #("Control-c" "Control-n") :mode "Pc Execute")
(mac-bind-key "History Yank" #("Control-c" "Control-y") :mode "Pc Execute")
(mac-bind-key "History Select" #("Control-c" "Control-f") :mode "Pc Execute")
(mac-bind-key "History Last" #("Control-c" ">") :mode "Pc Execute")
(mac-bind-key "History First" #("Control-c" "<") :mode "Pc Execute")
(mac-bind-key "History Search" #("Control-c" "Control-r") :mode "Pc Execute")
(mac-bind-key "History Kill Current" #("Control-c" "Control-k") :mode "Pc Execute")


;;; using Emacs commands from Mac emulation

;;; Calling an Emacs command.
;;; This makes Mac( Ctrl-E Ctrl-k ) == Emacs( Ctrl-k )
(mac-bind-key "Emacs Command" "Control-E")

) ; flet

