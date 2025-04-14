#import "../../template.typ": *

#let course = "CS 47"
#let professor = "Professor Seshadri Paravastu"
#let author = "Naya Singhania"

#let meta(title: "", course:course, professor:professor, author:author, body) = {
  show: notes.with(title: title, course: course, professor: professor, author:author)
  body
}