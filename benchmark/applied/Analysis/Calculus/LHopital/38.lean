import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter

lemma HasDerivAt.inv_fun_tendsto
    {f : ℝ → ℝ} {f' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a)
    (hmono : StrictMono f)
    (hcont : ContinuousAt f a)
    (h0 : f' ≠ 0) :
    ∃ g : ℝ → ℝ, HasDerivAt g (1 / f') (f a) ∧
      Tendsto g (nhds (f a)) (nhds a) := by
  sorry