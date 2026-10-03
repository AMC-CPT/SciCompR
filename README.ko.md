# 과학 계산 with R — 예제 저장소

*An English description is in [README.md](README.md).*

김민규·임진아·배균섭, 『과학 계산 with R』(Scientific Computation with R)의
companion 저장소다. 책에 실린 **R 코드와 그 출력, 그림을 독자가 그대로 다시 만들 수
있게** 하는 것이 목적이며, 책 본문은 여기 없다.

## 구조

이 책은 코드가 본문 안에 있다. 그래서 공개본에는 본문에서 뽑아낸 것이 간다.

```
R/<장>/<id>.R     본문에 실리는 R 코드 블록 386개 (id 는 책의 블록 번호)
R/manifest.tsv    블록의 순서와 그림 옵션. build.R 이 읽는다
output/<id>.txt   본문에 실린 콘솔 출력 292개
figures/          본문이 쓰는 그림 74개
data/             8장이 읽는 자료 파일 2개
build.R           코드를 다시 돌려 output/ 과 figures/ 를 다시 만든다
```

장 이름은 책의 차례와 같다.

| | | | |
|---|---|---|---|
| 01 부동소수점 산술 | 05 적분변환 | 09 벡터·행렬·공간 | 13 최적화 |
| 02 계승과 감마함수 | 06 특수함수 | 10 선형계와 분해 | 14 확률과 가능도 |
| 03 미분 | 07 분포함수 | 11 미분방정식 | 15 통계적 추론 |
| 04 적분 | 08 난수 생성 | 12 근 찾기 | appA R 언어 |

## 돌려 보기

```sh
git clone https://github.com/AMC-CPT/SciCompR
cd SciCompR
Rscript build.R            # 전부
Rscript build.R 11         # 11장만
Rscript build.R 11 12 appA # 여럿
```

필요한 R 패키지: `evaluate`, `mathr`(0.1.4 이상), `wnl`, `deSolve`, `numDeriv`, `MASS`.

```r
install.packages(c("evaluate", "mathr", "wnl", "deSolve", "numDeriv", "MASS"))
# CRAN 의 mathr 가 0.1.4 보다 낮으면:
# remotes::install_github("ksbae/mathr")
```

## 한 장이 세션 하나다

블록은 파일로 나뉘어 있지만 **따로 돌리라고 나눈 것이 아니다.** 한 장의 블록은
`build.R` 이 세션 하나에서 책에 실린 순서대로 돌리므로, 뒤 블록이 앞 블록에서
정의한 것을 본다. `R/11_Differential_Equation/ch11-07.R` 만 따로 돌리면 앞의
여섯 블록이 만든 것이 없어 실패한다. 나눈 이유는 책의 어느 블록이 어느 출력을
내놓았는지 일대일로 맞추기 위해서다.

블록 10개는 `manifest.tsv` 에 `noeval` 로 표시되어 있고 `build.R` 이 건너뛴다.
의사코드, 함수 서명, 설치 명령처럼 **읽으라고 실은 것이고 돌리라고 실은 것이
아닌** 블록이다. 그 가운데 `ch08-20` 하나만은 실제로 도는 코드다. `data/` 의
자료 파일 두 개를 읽으며, 책이 그 출력을 싣지 않으므로 `build.R` 도 건너뛴다.
직접 돌려 보려면 저장소 최상위 폴더를 작업 폴더로 두고 그 파일을 R 에 붙여
넣으면 된다.

## 그림

그림은 `cairo_pdf()` 로 Arial 을 박아 만든다. `pdf()` 는 Helvetica 를 임베드하지
않아서 그 그림이 들어간 PDF 도 임베드되지 않은 글꼴을 갖게 되고, 인쇄소에서 다른
글꼴로 바뀐다. Arial 은 Windows 기본 글꼴이라 어디서 다시 만들어도 같은 그림이
나온다. Windows 가 아닌 곳에서 돌리면 그림의 글꼴만 달라지고 숫자는 같다.

`build.R` 을 돌리면 `figures/` 의 74개가 **전부 바뀐 것으로 잡힌다.** 그림이
달라진 것이 아니라 PDF 의 생성 시각과 글꼴 subset 이 cairo 판본마다 다르기
때문이다. 여기 커밋된 것은 책에 실린 그 파일이므로, 되돌리려면
`git checkout -- figures` 하면 된다. 반면 `output/` 292개는 다시 돌려도
**바이트까지 같아야 한다.** 하나라도 달라지면 그것은 진짜 차이이고, 쓰고 있는 R 이나
패키지 판본이 책과 다르다는 뜻이다.

## 저작권과 라이선스

책 본문의 저작권은 지은이와 출판사에 있고 여기에는 본문이 없다. 이 저장소의
코드와 얼린 출력과 그림은 **GNU General Public License v3.0 또는 그 이후 판**으로
공개한다(`LICENSE`). 돌려 보고 고쳐 쓰는 것은 자유이며, 고친 것을 배포할 때는 같은
조건으로 소스를 함께 내놓는다.

Copyright (C) 2026 Minkyu Kim, Jina Lim, Kyun-Seop Bae. This program is free software:
you can redistribute it and/or modify it under the terms of the GNU General Public
License as published by the Free Software Foundation, either version 3 of the License,
or (at your option) any later version. It is distributed WITHOUT ANY WARRANTY; see
`LICENSE` for details.

## 다른 권의 companion

| | |
|---|---|
| 2권 임상시험에서의 과학적 추론 with R | <https://github.com/AMC-CPT/CTDA> |
| 3권 약동학 with R | <https://github.com/AMC-CPT/PKwR> |
| 4권 계량약리학 with NONMEM and R | <https://github.com/AMC-CPT/PMx> |
| 5권 신약임상개발 자료실 | <https://github.com/AMC-CPT/CDD> |
