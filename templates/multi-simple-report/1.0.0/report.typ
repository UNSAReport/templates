#import "/lib.typ": simple-report
#import "/components/code-block.typ": code-block

#show: simple-report.with(
  title: "Título de la Actividad Práctica",
  subtitle: "Subtítulo opcional de la actividad",
  course: "Nombre de la Asignatura",
  teacher: "Nombre del Docente",
  authors: (
    "Apellidos y Nombres del Estudiante",
  ),
  group: none,
)

#include "sections/1-desarrollo.typ"
#v(0.5em)
#include "sections/2-conclusiones.typ"
#v(0.5em)
#include "sections/3-referencias.typ"
