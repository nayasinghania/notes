#import "../../template.typ": *

#let course = "CS 152"
#let professor = "Dr. Saptarshi Sengupta"
#let author = "Naya Singhania"

#let meta(title: "", course:course, professor:professor, author:author, body) = {
  show: notes.with(title: title, course: course, professor: professor, author:author)
  body
}