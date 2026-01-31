import Mathlib

lemma moment_smul_left_abs_even
    {Ω : Type*} {m : MeasurableSpace Ω} (μ : MeasureTheory.Measure Ω)
    (a : ℝ) {X : Ω → ℝ} {p : ℕ} (hp : Even p) :
    ProbabilityTheory.moment (fun ω => a * X ω) p (μ := μ) =
      |a| ^ p * ProbabilityTheory.moment X p (μ := μ) := by
  sorry