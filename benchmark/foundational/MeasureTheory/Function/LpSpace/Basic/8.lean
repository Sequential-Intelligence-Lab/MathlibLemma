import Mathlib

namespace MeasureTheory

open scoped ENNReal

lemma Lp.smul_eq_mk
    {α 𝕜 E : Type*} {m : MeasurableSpace α} (p : ℝ≥0∞) (μ : Measure α)
    [NormedRing 𝕜] [NormedAddCommGroup E] [Module 𝕜 E]
    [IsBoundedSMul 𝕜 E]
    (c : 𝕜) (f : Lp E p μ) :
    (c • f : Lp E p μ) =
      ⟨c • (f : α →ₘ[μ] E), by
        -- proof omitted
        sorry⟩ := by
  -- proof omitted
  sorry

end MeasureTheory