# SCons build file

import os
env = Environment(ENV=os.environ)

env.Replace(PDFLATEX='xelatex')
env.Replace(BIBTEX='biber')

env.AppendUnique(PDFLATEXFLAGS='-synctex=1')
env.AppendUnique(PDFLATEXFLAGS='-shell-escape')

BASE = 'main'

pdf_output = env.PDF(target=BASE+'.pdf', source=BASE+'.tex')
env.Clean(pdf_output, BASE+'.synctex.gz')
env.Precious(pdf_output)

# vim: filetype=python
