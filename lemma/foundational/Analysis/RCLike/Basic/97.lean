import Mathlib

lemma RCLike.re_finsupp_sum {K : Type*} [RCLike K]
    {ι : Type*} {M : Type*} [Zero M] (f : ι →₀ M) (g : ι → M → K) :
    RCLike.re (f.sum fun a b => g a b) =
      f.sum fun a b => RCLike.re (g a b) := by
  classical
  -- Unfold `Finsupp.sum` on both sides to finite sums over `f.support`.
  -- Then use linearity of `RCLike.re` (via `reCLM.toLinearMap`) with `map_sum`.
  simpa [Finsupp.sum] using
    (RCLike.reCLM.toLinearMap.map_sum (fun a => g a (f a)) f.support)