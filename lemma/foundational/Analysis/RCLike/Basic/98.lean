import Mathlib

lemma RCLike.im_finsupp_sum {K : Type*} [RCLike K]
    {ι : Type*} {M : Type*} [Zero M] (f : ι →₀ M) (g : ι → M → K) :
    RCLike.im (f.sum fun a b => g a b) =
      f.sum fun a b => RCLike.im (g a b) := by
  classical
  -- Unfold the `Finsupp.sum` on both sides and use linearity of `RCLike.im`
  simpa [Finsupp.sum, map_sum]