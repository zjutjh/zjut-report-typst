## ZJUT-Report-Typst
浙江工业大学的报告模板

> **注意**
> 本仓库**并非官方模板**

### 文件说明
- `template/template.typ` 模板入口
- `example.typ` 样例
- [example.pdf](./example.pdf) 编译出的 `pdf` 文件

## 如何使用

### Linux/Mac

```bash
sh -c "$(wget https://raw.githubusercontent.com/zjutjh/zjut-report-typst/main/get-template.sh -O -)"
```

### 手动

Clone 本仓库后手动导入

### 关于 Package

参考 https://github.com/typst/packages#local-packages

Template 不应该是一个 Package, 而关于 Template 的基础建设正在进行中，
请参考 https://github.com/typst/typst/issues/2432

因此如果有需求将本模板作为一个 package，请按照自己的系统自行将 `template` 目录中的内容放置到你的系统的对应位置

例如我是 Linux 系统，因此这个目录应该在:
`~/.local/share/typst/packages/local/zjut-report-typst/0.1.0/template.typ`
导入时应该是: 
```typ
#import "@local/zjut-report-typst:0.1.0": *
```

> 需要注意的是这是一个暂时性的解决方案，之后理论上会依赖于 typst cli

## 关于 Typst

Typst 是一个新的基于 Markup 的排版引擎，类似于 $\LaTeX$
由于 Typst 还处于开发阶段，本模板可能随时出现问题

可以参考 Typst 的官方文档: https://typst.app/docs
## 参考
- [zjut-report-tex](https://github.com/zjutjh/zjut-report-tex)
- [HUST-typst-template](https://github.com/werifu/HUST-typst-template)
