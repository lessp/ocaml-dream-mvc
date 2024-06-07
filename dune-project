(lang dune 3.15)
(using melange 0.1)

(name ocaml_dream_mvc)
(generate_opam_files true)
(source
 (github lessp/ocaml-dream-mvc))
(authors "lessp")
(license LICENSE)
(documentation https://github.com/lessp/ocaml-dream-mvc)

(package
 (name ocaml_dream_mvc)
 (synopsis "A MVC example in OCaml")
 (allow_empty)
 (depends
  ; Platform
  dune
  ocaml
  reason

  caqti-driver-postgresql
  dotenv
  dream
  (html_of_jsx
   (>= 0.3.0))

  ;; Dev dependencies
  (ocamlformat
   (and
    (= 0.26.2)
    :with-dev-setup))
  (ocaml-lsp-server :with-dev-setup)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
