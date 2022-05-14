# Build instructions

The LaTeX file now uses [`minted`](https://ctan.org/pkg/minted) for syntax highlighting.
There are instructions in the package documentation on how to install the prequisites, the main one which may not be on your machine being [Pygments](https://pygments.org/).
The other requirements are LaTeX packages which should be included in the distribution already installed.

Once you have Pygments installed, you then need to call `pdflatex` as so:
```plain
pdflatex -shell-escape <file>
```
noting the single dash character as opposed to two dash characters.
