import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
open Filter

lemma HasDerivAt.tendsto_ratio_sub
    {f g : ℝ → ℝ} {f' g' : ℝ} {a : ℝ}
    (hf : HasDerivAt f f' a)
    (hg : HasDerivAt g g' a)
    (hg0 : g' ≠ 0) :
    Tendsto (fun x => (f x - f a) / (g x - g a))
      (nhdsWithin a ({a} : Set ℝ)ᶜ) (nhds (f' / g')) := by
  sorry