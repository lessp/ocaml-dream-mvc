(lang dune 3.15)

(name ocaml_dream_mvc)
(generate_opam_files true)
(source
 (github lessp/ocaml-dream-mvc))
(authors "lessp")
(maintainers "Maintainer Name")
(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocaml_dream_mvc)
 (synopsis "A short synopsis")
 (description "A longer description")
 (allow_empty)
 (depends 
   dream
   dune
   html_of_jsx
   ocaml)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
