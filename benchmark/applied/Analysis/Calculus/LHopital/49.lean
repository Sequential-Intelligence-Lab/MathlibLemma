import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma HasDerivAt.local_lipschitz_ratio
    {f g : ℝ → ℝ} {f' g' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a)
    (hg : HasDerivAt g g' a)
    (hg0 : g' ≠ 0)
    (hg_ne : g a ≠ 0) :
    ∃ C ε, 0 < ε ∧
      (∀ x, |x - a| < ε →
        ‖f x / g x - f a / g a‖ ≤ C * |x - a|) := by
  sorry