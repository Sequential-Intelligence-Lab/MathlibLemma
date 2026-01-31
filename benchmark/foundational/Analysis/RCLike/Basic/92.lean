import Mathlib

lemma RCLike.ofReal_comp_im (K : Type*) [RCLike K] :
    (fun z : K => (RCLike.im z : K)) = RCLike.ofReal ∘ RCLike.im := by
  sorry
