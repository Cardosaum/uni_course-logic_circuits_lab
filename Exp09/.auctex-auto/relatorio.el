(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels") ("ifsym" "electronic")))
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
    "ifsym"
    "trace")
   (TeX-add-symbols
    "colorIndex")
   (LaTeX-add-labels
    "sec:Introducao"
    "fig:ContadorSincrono.png"
    "fig:ContadorAssincrono.png"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:2.1"
    "fig:2.1.1.png"
    "fig:2.1.2.png"
    "sec:2.2"
    "fig:2.2.1.png"
    "fig:2.2.2.png"
    "tab:truth_table_latch_rs_triggered"
    "2.2.4.1.png"
    "sec:2.3"
    "fig:2.1.3_circuit.png"
    "fig:2.1.3.wave.1.png"
    "fig:2.1.3.wave.2.1.png"
    "fig:2.1.3.wave.2.2.png"
    "sec:2.4"
    "tab:contador_sincrono"
    "tab:t0"
    "tab:t1"
    "tab:t2"
    "fig:Q0.png"
    "fig:Q1.png"
    "fig:Q2.png"
    "fig:2.1.4_circuit.png"
    "fig:2.1.4.wave.png"
    "sec:resultados"
    "sec:analise2.1"
    "sec:analise2.2"
    "sec:analise2.3"
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

