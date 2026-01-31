import Mathlib

lemma RCLike.im_summable_iff {K : Type*} [RCLike K]
    {α : Type*} {f : α → K} :
    Summable f → Summable (fun a => (RCLike.im (f a) : ℝ)) := by
  sorry
