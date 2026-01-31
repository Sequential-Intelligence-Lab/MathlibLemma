import Mathlib


/-!  Brainstormed candidate lemmas for future mathlib extensions.
These are *not* proved; all lemmas end with `by sorry`.
-/

/-! ### General analytic / meromorphic function lemmas -/
/-- If two analytic functions are equal on a set with an accumulation point in a connected open set,
they are equal on the whole domain. -/
lemma AnalyticOnNhd.eq_of_eqOn_of_hasAccumulation {f g : ℂ → ℂ} {s t : Set ℂ}
    (hf : AnalyticOnNhd ℂ f s)
    (hg : AnalyticOnNhd ℂ g s)
    (ht : IsPreconnected s)
    (hsubset : t ⊆ s)
    (htacc : ∃ z₀ ∈ s, z₀ ∈ closure t ∧ (t \ {z₀}).Nonempty)
    (heq : Set.EqOn f g t) :
    Set.EqOn f g s := by
  sorry

/-! ### Hurwitz zeta & related functions -/