" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax match cNiceOperator "++" conceal cchar=Δ
syntax match cNiceOperator "--" conceal cchar=∇

syntax match cNiceOperator "==" conceal cchar=≝
syntax match cNiceOperator "!=" conceal cchar=≠
syntax match cNiceOperator ">=" conceal cchar=≥
syntax match cNiceOperator "<=" conceal cchar=≤

syntax match cNiceOperator "&&" conceal cchar=∧
syntax match cNiceOperator "||" conceal cchar=∨

syntax match cNiceOperator "<<" conceal cchar=≺
syntax match cNiceOperator ">>" conceal cchar=≻

syntax match cNiceOperator "->" conceal cchar=➞

syntax match cNiceOperator /\s=\s/ms=s+1,me=e-1 conceal cchar=←
syntax match cNiceOperator /\S=\S/ms=s+1,me=e-1 conceal cchar=←

syntax keyword cStructure enum conceal cchar=∩
syntax keyword cStructure union conceal cchar=⋃
syntax keyword cStructure struct conceal cchar=⊇
syntax keyword cOperator sizeof conceal cchar=𝔠

syntax keyword cStatement return conceal cchar=⏎
syntax keyword cStatement goto conceal cchar=↷

syntax keyword cRepeat while conceal cchar=⥁
syntax keyword cRepeat for conceal cchar=∀

syntax keyword cType void         conceal cchar=∅
syntax keyword cType unsigned     conceal cchar=ℕ
syntax keyword cType int short    conceal cchar=ℤ
syntax keyword cType char         conceal cchar=∁
syntax keyword cType float double conceal cchar=ℝ
syntax keyword cType str string conceal cchar=𝐒

syntax keyword cKeyword false conceal cchar=𝐅
syntax keyword cKeyword FALSE conceal cchar=𝐅
syntax keyword cKeyword true conceal cchar=𝐓
syntax keyword cKeyword TRUE conceal cchar=𝐓
syntax keyword cKeyword NULL conceal cchar=∅

hi link cNiceOperator Operator
hi link cKeyword Keyword
hi! link Conceal Operator

set conceallevel=2
