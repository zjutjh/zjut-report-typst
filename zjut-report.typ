#let heiti = ("Times New Roman", "Heiti SC", "Heiti TC")
#let songti = ("Times New Roman", "Songti SC", "Songti TC")

#let _label(content) = text(content, size: 16pt, font: songti)
#let _blank(content) = underline(text(content, size: 16pt, font: songti), extent: 10pt)

#let info_key(body) = {
      rect(width: 100%, inset: 2pt, 
       stroke: none,
       text(
        font: songti,
        size: 16pt,
        body
      ))
    }

    #let info_value(body) = {
      rect(
        width: 100%,
        inset: 2pt,
        stroke: (
          bottom: 1pt + black
        ),
        text(
          font: songti,
          size: 16pt,
          bottom-edge: "descender"
        )[
          #body
        ]
      ) 
    }

#let cover( 
  title:"",
  author:"",
  name:"",
  class:"",
  grade:"",
  department:"",
  date:(2023, 04, 17),
  id:"",
  body,
) = {
  align(center + horizon)[
    #image("./img/校名.png", width: 60%)
    #text(title, size: 24pt, font: songti, weight: "bold")\
    #text("(" + grade + "级)", size: 20pt, font: songti)\
    #image("./img/校徽.png", width: 40%)

      #grid(
      columns: (70pt, 180pt),
      rows: (40pt, 40pt),
      gutter: 3pt,
      info_key("实验题目"),
      info_value(name),
      info_key("学生姓名"),
      info_value(author),
      info_key("学　　号"),
      info_value(id),
      info_key("专业班级"),
      info_value(class),
      info_key("所在学院"),
      info_value(department),
      info_key("提交日期"),
      info_value(text(font: songti,size: 16pt,)[#date.at(0) 年 #date.at(1) 月 #date.at(2) 日]),
  )
  ]
  pagebreak()

  show heading.where(level: 1): it => {
    set align(center)
    set text(weight: "bold", font: heiti, size: 18pt)
    it
  }

  outline(title: "目录")
  body
}
