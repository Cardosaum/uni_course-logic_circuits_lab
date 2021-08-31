(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("babel" "brazil" "american") ("inputenc" "utf8") ("enumitem" "shortlabels")))
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
    "enumitem")
   (LaTeX-add-labels
    "sec:Introducao"
    "sec:Objetivos"
    "sec:Materiais"
    "sec:Procedimentos"
    "sec:atraso_de_propagação"
    "tab:atraso_de_propagação:L0_L1"
    "fig:exp4_2.0_b_clk_up.png"
    "fig:exp4_2.0_b_clk_down.png"
    "fig:exp4_2.0_c_clk_up.png"
    "fig:exp4_2.0_c_clk_down.png"
    "sec:comparador_de_palavras_3_bits"
    "tab:comparador_de_palavras_3_bits"
    "fig:2_2_karnaugh_map.png"
    "eq:2.2_NAND"
    "fig:decisao_minoria"
    "fig:decisao_minoria_montagem"
    "sec:decisao_igualdade"
    "tab:decisao_igualdade"
    "tab:tabela_verdade_decisao_igualdade"
    "eq:2.3_NAND"
    "fig:decisao_igualdade"
    "fig:decisao_igualdade_montagem"
    "sec:Resultados"
    "sec:Conclusao")
   (LaTeX-add-bibliographies))
 :latex)

