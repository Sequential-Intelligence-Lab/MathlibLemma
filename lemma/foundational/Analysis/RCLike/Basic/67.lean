import Mathlib

lemma RCLike.conj_zsmul (K : Type*) [RCLike K] (z : K) (n : ℤ) :
    star (n • z) = n • star z := by
  -- This follows from the general lemma `map_zsmul` for `star`.
  -- exact map_zsmul (star) n z
  simpa using
    (map_zsmul (starAddMonoidHom : K →+ K) n z)