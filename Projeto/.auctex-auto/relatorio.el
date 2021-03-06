(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels") ("ifsym" "electronic")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "sbc-template"
    "babel"
    "inputenc"
    "graphicx"
    "url"
    "float"
    "listings"
    "color"
    "todonotes"
    "algorithmic"
    "algorithm"
    "hyperref"
    "amsmath"
    "array"
    "mwe"
    "pythonhighlight"
    "enumitem"
    "xcolor"
    "ifsym"
    "trace")
   (TeX-add-symbols
    "colorIndex")
   (LaTeX-add-labels
    "sec:Introducao"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:2.1"
    "fig:circuit__instruction_register.png"
    "fig:circuit__MIPS.png"
    "sec:2.2"
    "fig:circuit__ROM_memory.png"
    "sec:2.3"
    "fig:diagram__register_file.png"
    "fig:circuit__register_file.png"
    "fig:circuit__register_file_1.png"
    "fig:circuit__register_file_2.png"
    "sec:2.4"
    "fig:circuit__ula.png"
    "sec:2.5"
    "fig:circuit__comparator.png"
    "sec:2.6"
    "fig:circuit__control.png"
    "fig:circuit__signals.png"
    "sec:programs"
    "sec:programs:multu"
    "tab:programs:multu"
    "fig:program__multu_wave.png"
    "sec:programs:mult"
    "tab:programs:mult"
    "fig:program__mult_wave.png"
    "sec:programs:divu"
    "tab:programs:divu"
    "fig:program__divu_wave.png"
    "sec:programs:div"
    "tab:programs:div"
    "fig:program__div_wave.png"
    "sec:programs:remu"
    "tab:programs:remu"
    "fig:program__remu_wave.png"
    "sec:programs:rem"
    "tab:programs:rem"
    "fig:program__rem_wave.png"
    "sec:programs:prime"
    "tab:programs:primo"
    "fig:program__primo_wave.png"
    "sec:programs:frequency"
    "sec:Conclusao")
   (LaTeX-add-bibliographies)
   (LaTeX-add-listings-lstdefinestyles
    "verilog-style")
   (LaTeX-add-xcolor-definecolors
    "vgreen"
    "vblue"
    "vorange"))
 :latex)

