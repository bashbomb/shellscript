#!/bin/bash
set -euo pipefail

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
reset=$(tput sgr0)

clear
cat << EOF

6. 고급 명령어
  - SED
    - 문자열 처리 명령어
      +----------------------------------------+------------+-------------------------------------------------------------------+
      |                 명령어                 |    이름    |                                내 용                              |
      +========================================+============+===================================================================+
      | [텍스트라인-범위]/p                    | print      | 출력                                                              |
      +----------------------------------------+------------+-------------------------------------------------------------------+
      | [텍스트라인-범위]/d                    | delete     | 삭제                                                              |
      +----------------------------------------+------------+-------------------------------------------------------------------+
      | s/소스패턴/결과패턴/                   | substitute | 한 줄에서 처음 나타나는 소스패턴을 결과패턴으로 치환              |
      +----------------------------------------+------------+-------------------------------------------------------------------+
      | [텍스트라인-범위]s/소스패턴/결과패턴/ | substitute | 지정한 범위에서 처음 나타나는 소스패턴을 결과패턴으로 치환         |
      +----------------------------------------+------------+-------------------------------------------------------------------+
      | [텍스트라인-범위]y/소스패턴/결과패턴/ | transform  | 지정한 범위에서 소스패턴을 결과패턴으로 바꿈 (문자 수가 같아야함)  |
      +----------------------------------------+------------+-------------------------------------------------------------------+
      | 명령어처리_스크립트/g                  | global     | 명령어처리 스크립트의 모든 소스패턴을 결과패턴으로 변경           |
      +----------------------------------------+------------+-------------------------------------------------------------------+

EOF

echo -n "Next 정규표현식 y/n : "
read A
[ ${A} == y ] && ./6/6-1-0.sh || ./6/6-0-0.sh
