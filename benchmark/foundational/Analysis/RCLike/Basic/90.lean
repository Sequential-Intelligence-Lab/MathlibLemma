import Mathlib

lemma RCLike.im_comp_ofReal (K : Type*) [RCLike K] :
    RCLike.im ∘ (fun x : ℝ => (x : K)) = fun _ => (0 : ℝ) := by
  sorry
