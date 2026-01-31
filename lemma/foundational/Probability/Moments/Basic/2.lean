import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma moment_congr_ae {Ω : Type*} {m : MeasurableSpace Ω} {X Y : Ω → ℝ}
    {p : ℕ} {μ : MeasureTheory.Measure Ω} (hXY : X =ᵐ[μ] Y) :
    ProbabilityTheory.moment X p μ = ProbabilityTheory.moment Y p μ := by
  classical
  -- Show the integrands defining the moments are a.e. equal
  have hpow :
      (fun ω => X ω ^ p) =ᵐ[μ] (fun ω => Y ω ^ p) := by
    refine hXY.mono ?_
    intro ω hω
    simpa [hω]
  -- Use integral_congr_ae and rewrite via the definition of moment
  simpa [ProbabilityTheory.moment] using
    (MeasureTheory.integral_congr_ae hpow)