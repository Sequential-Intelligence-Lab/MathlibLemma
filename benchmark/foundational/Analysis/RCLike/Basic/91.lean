import Mathlib

lemma RCLike.ofReal_comp_re (K : Type*) [RCLike K] :
    (fun z : K => (RCLike.re z : K)) = RCLike.ofReal ∘ RCLike.re := by
  sorry
