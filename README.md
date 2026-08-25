# CV Project

This repository contains the LaTeX source code for my Curriculum Vitae.

## Prerequisites

To compile the CV, you will need a LaTeX distribution installed on your system:
- **Linux:** [TeX Live](https://www.tug.org/texlive/) (e.g., `sudo apt install texlive-full` on Ubuntu/Debian)
- **Windows:** [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS:** [MacTeX](https://www.tug.org/mactex/)

You will also need `make` if you wish to use the provided Makefile (optional but recommended).

## Compilation

### Using Make (Linux / macOS / Windows)

A `Makefile` is included to simplify the compilation process and supports both Linux and Windows environments natively.

To compile the LaTeX file into a PDF, open your terminal/command prompt and run:
```bash
make
```

To clean up intermediate build files (like `.aux`, `.log`, etc.), run:
```bash
make clean
```

To remove the intermediate files and the generated PDF, run:
```bash
make distclean
```

### Manual Compilation

If you don't have `make` installed (common on standard Windows installations), you can compile the document manually using your terminal or command prompt:

```bash
pdflatex cv.tex
pdflatex cv.tex
```

*(Note: Running `pdflatex` twice is required to ensure that all layout formatting, columns, and references are calculated and positioned correctly).*
