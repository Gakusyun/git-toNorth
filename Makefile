# 定义LaTeX编译器  
LATEX = pdflatex  

# 定义目标PDF文件  
Target = Git指北.pdf  

# 规则：如何从.tex文件生成.pdf文件  
$(Target): Git指北.tex  
	$(LATEX) $<  
	# 如果需要多次编译，可以添加更多$(LATEX) $< 命令  
	# $(LATEX) $<  

# 清理规则  
clean:  
	rm -rf $(Target) $(Target:.pdf=.aux) $(Target:.pdf=.log) $(Target:.pdf=.toc) # 以及其他可能的文件  

# 声明clean为伪目标  
.PHONY: clean