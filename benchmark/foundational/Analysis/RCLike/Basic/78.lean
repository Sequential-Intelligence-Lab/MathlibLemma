import Mathlib

lemma RCLike.re_summable_iff {K : Type*} [RCLike K]
    {α : Type*} {f : α → K} :
    Summable f → Summable (fun a => (RCLike.re (f a) : ℝ)) := by
  sorry
