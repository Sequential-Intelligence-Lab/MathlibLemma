import Mathlib

open MeasureTheory

lemma condExp_iterate_tower {α E}
    {m₁ m₂ m₃ m₀ : MeasurableSpace α} {μ : Measure α}
    [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
    (hm₁₂ : m₁ ≤ m₂) (hm₂₃ : m₂ ≤ m₃) (hm₃₀ : m₃ ≤ m₀)
    [SigmaFinite (μ.trim hm₃₀)]
    (f : α → E) :
    μ[ μ[ μ[ f | m₃ ] | m₂ ] | m₁ ] =ᵐ[μ] μ[ f | m₁ ] := by
  sorry