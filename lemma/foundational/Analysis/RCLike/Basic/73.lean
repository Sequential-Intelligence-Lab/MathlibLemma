import Mathlib

lemma RCLike.isSelfAdjoint_ofReal (K : Type*) [RCLike K] (x : ℝ) :
    IsSelfAdjoint (RCLike.ofReal x : K) := by
  -- `IsSelfAdjoint a` is defined as `star a = a`
  -- and for `a = RCLike.ofReal x`, we have `star (RCLike.ofReal x) = RCLike.ofReal x`
  simpa [IsSelfAdjoint] using (RCLike.map_real_real (x := x) : 
    star (RCLike.ofReal x : K) = RCLike.ofReal x)