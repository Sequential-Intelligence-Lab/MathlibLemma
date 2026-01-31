import Mathlib

lemma RCLike.re_finsupp_sum {K : Type*} [RCLike K]
    {ι : Type*} {M : Type*} [Zero M] (f : ι →₀ M) (g : ι → M → K) :
    RCLike.re (f.sum fun a b => g a b) =
      f.sum fun a b => RCLike.re (g a b) := by
  sorry
