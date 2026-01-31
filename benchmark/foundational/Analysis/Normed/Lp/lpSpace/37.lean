import Mathlib

lemma norm_le_ciSup_apply' {α : Type*} [TopologicalSpace α] [Nonempty α]
    (f : BoundedContinuousFunction α ℝ) :
  ‖f‖ ≤ ⨆ i : α, |f i| := by
  sorry