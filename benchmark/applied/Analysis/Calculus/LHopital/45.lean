import Mathlib

open Filter

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma HasDerivAt.eventually_ne_of_local_injective
    {f : ℝ → ℝ} {f' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a)
    (h0 : f' ≠ 0) :
    ∀ᶠ x in (nhds a : Filter ℝ), f x ≠ f a := by
  sorry