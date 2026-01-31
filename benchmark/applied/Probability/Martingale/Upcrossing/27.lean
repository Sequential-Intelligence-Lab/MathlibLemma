import Mathlib

open MeasureTheory

lemma isStoppingTime_lowerCrossingTime_succ
    {Ω} {m0 : MeasurableSpace Ω} (ℱ : Filtration ℕ m0)
    {a b : ℝ} (f : ℕ → Ω → ℝ) {N n : ℕ}
    (hf : Adapted ℱ f) :
    IsStoppingTime ℱ (fun ω => (lowerCrossingTime a b f N (n+1) ω : ℕ)) := by
  sorry