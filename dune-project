(lang dune 3.15)

(name ocaml_dream_mvc)
(generate_opam_files true)
(source
 (github username/reponame))
(authors "lessp")
(maintainers "Maintainer Name")
(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name ocaml_dream_mvc)
 (synopsis "A short synopsis")
 (description "A longer description")
 (allow_empty)
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

(dialect
 (name mlx)
 (implementation
  (extension mlx)
  ; (merlin_reader mlx)
  (format
   (run ocamlformat-mlx %{input-file}))
  (preprocess
   (run mlx-pp %{input-file}))))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
