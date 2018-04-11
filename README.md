# ptemplate - A project template

Inspired by [A Quick Guide to Organizing Computational Biology Projects](http://dx.doi.org/10.1371/journal.pcbi.1000424)

To initialize a new `project`, run these three steps:

    git clone https://github.com/nylander/ptemplate.git project

    cd project

    sh bin/init.sh

This will create the following file structure, as well as set the files
under version control (git). Note that folders `old/` and `tmp/` are
excluded from git control. This can be changed by editing the `.gitignore`
file.

    ptemplate/
    ├── analyses
    │   └── README.md
    ├── bin
    │   ├── fasta_unwrap.pl
    │   ├── fasta_wrap.pl
    │   ├── get_fasta_info.pl
    │   ├── init.sh
    │   └── README.md
    ├── data
    │   └── README.md
    ├── doc
    │   └── README.md
    ├── old
    ├── raw-data
    │   └── README.md
    ├── README.md
    ├── results
    │   └── README.md
    ├── src
    │   ├── fastaparser.pl
    │   ├── parse_fasta.pl
    │   └── README.md
    └── tmp

