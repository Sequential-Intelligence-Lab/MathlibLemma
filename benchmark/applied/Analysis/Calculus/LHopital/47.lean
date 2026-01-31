import Mathlib


/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma deriv_strictAnti_of_neg
    {f : ℝ → ℝ}
    (hdf : ∀ x, DifferentiableAt ℝ f x)
    (hneg : ∀ᶠ x in atTop, deriv f x < 0) :
    ∀ᶠ x in atTop, StrictAntiOn f (Set.Ioi (x : ℝ)) := by
  sorry

/-
  Some inequalities and norm control lemmas interfacing with derivatives and ratios.
-/