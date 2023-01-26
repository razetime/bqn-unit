⟨Assert, _must_fail, _describe_, ⟩⇐

# Globals and their setters (if applicable)
test_data←↕3‿0
# stack of describe calls (?)
stk←⟨"global"⟩
pass←0
fail←0
assert←0
err←0

# pass=1, fail=0.
_must_fail←{
  Block _𝕣 ·:
  0∘Block⎊1 @
}

Assert←{
	assert+↩1
  res←{
    1:pass+↩1,1
    ·:fail+↩1,0
  }𝕩
  test_data∾˘↩⟨⊑stk,≠stk,res⟩
}

_describe_←{
  title _𝕣_ block ·:
  stk∾˜↩⋈title
  Block title
}
