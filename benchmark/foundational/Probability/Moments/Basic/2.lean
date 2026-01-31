import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma moment_congr_ae {Ω : Type*} {m : MeasurableSpace Ω} {X Y : Ω → ℝ}
    {p : ℕ} {μ : MeasureTheory.Measure Ω} (hXY : X =ᵐ[μ] Y) :
    ProbabilityTheory.moment X p μ = ProbabilityTheory.moment Y p μ := by
  sorry