import Mathlib

open scoped ENNReal

lemma lp.norm_le_of_le_pointwise_infty
    {α : Type*} {E : α → Type*}
    [Nonempty α] [∀ i, NormedAddCommGroup (E i)]
    {f g : lp E (⊤ : ℝ≥0∞)} (h : ∀ i, ‖f i‖ ≤ ‖g i‖) :
    ‖f‖ ≤ ‖g‖ := by
  sorry