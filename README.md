# Deadlines

    - Abstract: July 28
    - Full paper: September 29

# Authors

    - Jan Wielemaker <J.Wielemaker@vu.nl>
    - Torbjorn.Lager@ling.gu.se <Torbjorn.Lager@ling.gu.se>
    - Fabrizio.Riguzzi@unife.it <Fabrizio.Riguzzi@unife.it>
    - Kowalski, Bob <r.kowalski@imperial.ac.uk>
    - Miguel Calejo <mc@interprolog.com>
    - <rak@doc.ic.ac.uk>
    - fs@doc.ic.ac.uk <fs@doc.ic.ac.uk>

# Paper organization

As is, the paper uses the SWI-Prolog LaTeX infrastructure, adapted for
TPLP (and used by previous papers). Just type `make` to build the paper.
Sections are kept in their own file to simplify conflict handling.  Some
notes:

  - By default, the source is a `.doc` file that is translated into
  `.tex` using the `doc2tex` script. That mostly turns `name/arity` into
  `\predref{name}{arity}`. If you do not like that for your section,
  just remove the `.doc` file and edit the `.tex` file directly.

  - The style defines `_` to be a normal undercore outside math mode.
  That means you can write atom_concat/2 instead of atom\_concat/2.
