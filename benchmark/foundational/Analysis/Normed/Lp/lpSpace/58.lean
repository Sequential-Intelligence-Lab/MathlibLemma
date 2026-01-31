import Mathlib

open scoped ENNReal

open PiLp

lemma lp_summable_mul_of_lp
    {α : Type*} {E : α → Type*}
    [∀ i, NormedAddCommGroup (E i)]
    {p q : ℝ≥0∞}
    (hpq : Real.HolderConjugate p.toReal q.toReal)
    (f : lp E p) (g : lp E q) :
    Summable (fun i => ‖f i‖ * ‖g i‖) := by
  sorry