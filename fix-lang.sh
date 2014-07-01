#!/usr/bin/env bash

function fix() {
    if [ -f "$1" ]; then
        sed -Ei '' 's/Qualifications? [Ss]ummary/Resumo/' "$1"
        sed -Ei '' 's/Git[Hh]ub [Pp]rojects/Projetos GitHub/' "$1"
        sed -Ei '' 's/Technical [Ss]kills/Habilidades Técnicas/' "$1"
        sed -Ei '' 's/Education/Educação/' "$1"
        sed -Ei '' 's/Degree/Grau/' "$1"
        sed -Ei '' 's/Major/Curso/' "$1"
        sed -Ei '' 's/Institution/Instituição/' "$1"
        sed -Ei '' 's/Graduation Year/Ano de Graduação/' "$1"
        sed -Ei '' 's/Professional Experience/Experiência Profissional/' "$1"
        sed -Ei '' 's/Technologies got to work on/Técnologias usadas/' "$1"
        sed -Ei '' 's/Other (Personal )?Projects/Outros Projetos Pessoais/' "$1"
    fi
}

fix readme.md
fix resume.md
fix resume.tex
fix resume/page.html
