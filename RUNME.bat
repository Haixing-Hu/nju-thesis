:: UTF-8
chcp 65001
@ echo off
:: 运行安装程序
xelatex njuthesis.ins
:: 生成手册
xelatex njuthesis.dtx
makeindex -s gind.ist -o njuthesis.ind njuthesis.idx
xelatex njuthesis.dtx
xelatex njuthesis.dtx
:: 生成示例文档
xelatex sample.tex
bibtex sample
xelatex sample.tex
xelatex sample.tex
:: 删除辅助文件
del *.aux *.bak *.bbl *.blg *.dvi *.glo *.gls *.idx *.ilg *.ind *.ist ^
    *.log *.out *.ps *.thm *.toc *.lof *.lot *.loe
cls
echo 恭喜！您已生成其他的基本文件和说明文档，这说明您的写作环境没有问题!
pause