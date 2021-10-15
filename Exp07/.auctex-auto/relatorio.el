(TeX-add-style-hook
 "relatorio"
 (lambda ()
   (LaTeX-add-bibitems
    "lcl"
    "cl_latchs_RS_D"
    "cl_flipflops_RS_D_JK"
    "cl_flipflop_T_clear_preset"))
 :bibtex)

