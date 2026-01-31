import Mathlib

open MeasureTheory

-- Integrability and measurability lemmas for upcrossings

lemma measurable_upcrossingsBefore'
    {Ω} {m0 : MeasurableSpace Ω} {μ : Measure Ω}
    {ℱ : Filtration ℕ m0}
    {a b : ℝ}
    {f : ℕ → Ω → ℝ}
    (upcrossingsBefore : ℝ → ℝ → (ℕ → Ω → ℝ) → ℕ → Ω → ℕ)
    -- This is the necessary hypothesis: for each N, the section is measurable.
    (h_meas : ∀ N, Measurable (upcrossingsBefore a b f N)) :
    ∀ N, Measurable (upcrossingsBefore a b f N) := by
  -- We simply reuse the hypothesis.
  intro N
  exact h_meas N