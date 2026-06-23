#import "components/cover-page.typ": cover-page

#let define(name, value) = {
  [#metadata((name: name, value: value)) <var_export>]
}

#let simple-report(
  title: "",
  subtitle: none,
  course: "",
  teacher: "",
  authors: (),
  group: none,
  year: none,
  city-country: "AREQUIPA - PERÚ",
  ..custom_vars,
  body
) = {
  // Export variables for UNSAReport CLI
  define("title", title)
  if subtitle != none { define("subtitle", subtitle) }
  define("course", course)
  define("teacher", teacher)
  define("authors", authors)
  if group != none { define("group", group) }

  let resolved-year = if year != none { year } else { datetime.today().year() }
  define("year", resolved-year)

  // Custom variables export
  for (name, value) in custom_vars.named() {
    define(name, value)
  }

  // Document styling
  set text(
    font: "Liberation Serif",
    size: 12pt,
    hyphenate: false,
    lang: "es",
  )

  set page(
    paper: "a4",
    margin: (x: 1.8cm, y: 2cm)
  )

  set par(
    justify: true,
    first-line-indent: 0pt,
    spacing: 1em,
    leading: 1em,
  )

  set heading(numbering: "1.1.1.")
  show heading: set text(size: 12pt, weight: "bold")

  show figure.caption: it => [
    #strong[#it.supplement #context it.counter.display(it.numbering).] #emph(it.body)
  ]

  // Cover Page
  cover-page(
    title: title,
    subtitle: subtitle,
    logo-path: "/img/fixed/logo.png",
    course: course,
    teacher: teacher,
    authors: authors,
    group: group,
    year: resolved-year,
    city-country: city-country
  )

  pagebreak()

  // Subsequent Pages Setup
  set page(
    numbering: "1",
    number-align: center,
  )
  counter(page).update(1)
  set par(leading: 0.6em)

  // Title header on the first content page
  align(center)[
    #set text(size: 14pt, weight: "bold")
    #block(below: 2em)[#title]
  ]

  body
}
