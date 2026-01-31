import Mathlib

/-! ### Brainstormed lemmas about `moment` -/

lemma centralMoment_congr_ae
    {Ω : Type*} [MeasurableSpace Ω]
    {X Y : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω}
    (hXY : X =ᵐ[μ] Y) :
    ProbabilityTheory.centralMoment X p μ =
      ProbabilityTheory.centralMoment Y p μ := by
  sorry