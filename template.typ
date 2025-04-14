#import "shorthand.typ": *

#let cover(title: "", course: "", professor: "", author: "") = {
  align(center + horizon, text(size: 20pt, title))
  align(center + horizon, text(size: 18pt, course))
  align(center + horizon, text(size: 16pt, professor))
  align(center + bottom, text(size: 14pt, author))

}

#let main(title: "", course: "", author: "", body) = {

  set text(
    size: 12pt
  )
  
  set page(
    header: [#title #h(1fr) #course],
    footer: context [
      #author
      #h(1fr)
      #counter(page).display(
        "1",
      )
    ]
  )
  set heading(numbering: "1.1.")
  body
}

#let notes(title: "", course: "", professor: "", author: "", body) = {
  cover(title:title, course:course, professor:professor, author:author)
  pagebreak()
  main(title:title, course:course, author:author, body)

}