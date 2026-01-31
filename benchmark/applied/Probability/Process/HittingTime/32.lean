import Mathlib


variable {Ω β γ ι ι' : Type*} {m : MeasurableSpace Ω}

open MeasureTheory
lemma hittingBtwn_real_scale
    [ConditionallyCompleteLinearOrder ℝ]
    {u : ℝ → Ω → β} {s : Set β} {n m a : ℝ} (ha : 0 < a) :
    hittingBtwn (fun t ω => u (a * t) ω) s n m
      = fun ω => (hittingBtwn u s (a * n) (a * m) ω) / a := by
  sorry
