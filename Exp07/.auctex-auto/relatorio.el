(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels")))
   (add-to-list 'LaTeX-verbatim-environments-local "lstlisting")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "lstinline")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "lstinline")
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
    "enumitem"
    "xcolor"
    "trace")
   (TeX-add-symbols
    "colorIndex")
   (LaTeX-add-labels
    "sec:Introducao"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:2.1"
    "fig:diagram_2.1.png"
    "tab:truth_table_latch_rs"
    "fig:Circ-2.1.png"
    "sec:2.2"
    "fig:LatchRS-Engatilhado.png"
    "tab:truth_table_latch_rs_triggered"
    "sec:2.3"
    "fig:Flip-Flop-RS.png"
    "tab:truth_table_flipflop_rs"
    "sec:2.4"
    "sec:resultados"
    "sec:analise2.1"
    "sec:analise2.4"
    "sec:Conclusao")
   (LaTeX-add-bibliographies)
   (LaTeX-add-listings-lstdefinestyles
    "verilog-style")
   (LaTeX-add-xcolor-definecolors
    "vgreen"
    "vblue"
    "vorange"))
 :latex)

