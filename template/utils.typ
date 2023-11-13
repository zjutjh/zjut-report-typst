#import "fonts.typ":*

#let date_format(
date: (2023,5,14)
) = {
      set text(font: font_style.songti, size: font_size.四号);
      [#date.at(0) 年 #date.at(1) 月 #date.at(2) 日]
}

#let toc() = {
  align(center)[
    #text(font: font_style.heiti, size: 18pt, "目    录")
  ]

  parbreak()

  set text(font: font_style.heiti, size: 12pt)
  set par(first-line-indent: 0pt)

  show outline: it => {
      set text(font: font_style.heiti, size: 12pt)
      it
      parbreak()
    }

    outline(
    title: none,
    indent: true,
    )
}
