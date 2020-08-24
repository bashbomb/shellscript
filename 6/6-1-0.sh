#!/bin/bash
set -euo pipefail

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)

clear
cat << EOF

6. 고급 명령어
  - 정규표현식
    - 텍스트의 패턴을 특수문자 등을 사용하여 표현한 것
      +----------+-------------------------------------+---------------------------+
      | 메타문자 |                 의미                | 매칭 가능한 문자열의 예시 |
      +==========+=====================================+===========================+
      | ^A       | A로 시작하는 문자열을 의미          | Avail                     |
      +----------+-------------------------------------+---------------------------+
      | A$       | 문자열이 A로 끝나는 것을 의미       | endA                      |
      +----------+-------------------------------------+---------------------------+
      | .        | 임의의 문자 한 개를 의미            | A.A : AaA, AbA, AcA       |
      +----------+-------------------------------------+---------------------------+
      | A?       | A문자가 0~1개 있음을 의미           | A?v : Avoid, void         |
      +----------+-------------------------------------+---------------------------+
      | A*       | A문자가 0개이상 반복                | A*b : b, Ab, AAb          |
      +----------+-------------------------------------+---------------------------+
      | A+       | A문자가 한 개 이상 반복             | A+b : Ab, AAb, AAAb       |
      +----------+-------------------------------------+---------------------------+
      | (A)      | A를 그룹으로 처리함을 의미          |                           |
      +----------+-------------------------------------+---------------------------+
      | A|B      | A 또는 B가 있음을 의미              | (A|B)b : Ab, Bb           |
      +----------+-------------------------------------+---------------------------+


EOF

echo -n "Next 정규표현식 y/n : "
read A
[ ${A} == y ] && ./6/6-1-1.sh || ./6/6-0-1.sh