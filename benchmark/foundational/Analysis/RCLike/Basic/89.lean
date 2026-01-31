import Mathlib

lemma RCLike.re_comp_ofReal (K : Type*) [RCLike K] :
    RCLike.re ∘ (fun x : ℝ => (x : K)) = id := by
  sorry
