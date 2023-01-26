⟨Assert, _must_fail⟩⇐

# Globals and their setters (if applicable)
test_data←⟨⟩
# stack of describe calls (?)
stk←⟨"global"⟩

_must_fail←{
  w 𝔽 _𝕣 x:
  p←0
  𝔽⎊{•Show "Test passed", p↩1} 𝕩
	{¬p?
	  ("Function did not error on inputs 𝕨←"∾(•Repr w)∾" and 𝕩←"∾•Repr x) ! 0
	}
}

Assert←{
	1:
}

_assert_eq_←{
  fr←𝕨𝔽𝕩
  gr←𝕨𝔾𝕩
	"Got: "(•Repr fr)∾(@+10)∾" Expected:"∾(•Repr gr) ! fr≡gr 
}

Get_test_data←{𝕊:test_data}

_describe_←{
  title _𝕣_ block ·:
  stk∾↩⋈title
  Block title
}
