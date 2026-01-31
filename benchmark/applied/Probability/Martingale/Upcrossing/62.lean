import Mathlib

open MeasureTheory

-- Integrability and measurability lemmas for upcrossings

lemma measurable_upcrossingsBefore'
    {Ω} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ℕ m0}
    {a b : ℝ}
    {f : ℕ → Ω → ℝ}
    (upcrossingsBefore : ℝ → ℝ → (ℕ → Ω → ℝ) → ℕ → Ω → ℕ) :
    ∀ N, Measurable (upcrossingsBefore a b f N) := by
  sorry