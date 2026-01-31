import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingAfter_nat_eq_top_iff
    {u : ℕ → Ω → β} {s : Set β} {n : ℕ} {ω : Ω} :
    hittingAfter u s n ω = ⊤ ↔ ∀ j ≥ n, u j ω ∉ s := by
  sorry
