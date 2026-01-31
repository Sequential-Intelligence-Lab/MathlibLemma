import Mathlib

open Filter Set

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma HasDerivAt.lhopital_zero_nhdsGT_real
    {a : ℝ} {f g f' g' : ℝ → ℝ}
    (hff' : ∀ᶠ x in nhdsWithin a (Ioi a), HasDerivAt f (f' x) x)
    (hgg' : ∀ᶠ x in nhdsWithin a (Ioi a), HasDerivAt g (g' x) x)
    (hg'  : ∀ᶠ x in nhdsWithin a (Ioi a), g' x ≠ 0)
    (hfa  : Tendsto f (nhdsWithin a (Ioi a)) (nhds 0))
    (hga  : Tendsto g (nhdsWithin a (Ioi a)) (nhds 0))
    (hdiv0 : Tendsto (fun x => f' x / g' x)
                     (nhdsWithin a (Ioi a)) (nhds 0)) :
    Tendsto (fun x => f x / g x) (nhdsWithin a (Ioi a)) (nhds 0) := by
  sorry