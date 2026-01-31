import Mathlib

open scoped BigOperators

lemma lp.norm_infty_lt_iff {α : Type*} {E : α → Type*}
    [Nonempty α] [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace ℝ (E i)]
    {f : lp E ⊤} {C : ℝ} :
    ‖f‖ < C ↔ ∀ i, ‖f i‖ < C := by
  sorry