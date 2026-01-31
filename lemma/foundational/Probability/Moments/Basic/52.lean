import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


open MeasureTheory ProbabilityTheory


/-! ### Brainstormed lemmas about `moment` -/
lemma mgf_add_const_prob
    {Ω : Type*} {m : MeasurableSpace Ω}
    (μ : MeasureTheory.Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    {X : Ω → ℝ} (c t : ℝ) :
    ProbabilityTheory.mgf (fun ω ↦ X ω + c) μ t =
      Real.exp (t * c) * ProbabilityTheory.mgf X μ t := by
  have h1 : ProbabilityTheory.mgf (fun ω : Ω => X ω + c) μ t = ∫ ω : Ω, Real.exp (t * (X ω + c)) ∂μ := by
    simp [ProbabilityTheory.mgf]
  have h2 : ProbabilityTheory.mgf X μ t = ∫ ω : Ω, Real.exp (t * (X ω)) ∂μ := by
    simp [ProbabilityTheory.mgf]
  rw [h1, h2]
  have h4 : ∫ ω : Ω, Real.exp (t * (X ω + c)) ∂μ = Real.exp (t * c) * ∫ ω : Ω, Real.exp (t * (X ω)) ∂μ := by
    have h5 : ∀ ω : Ω, Real.exp (t * (X ω + c)) = Real.exp (t * (X ω)) * Real.exp (t * c) := by
      intro ω
      have h6 : t * (X ω + c) = t * (X ω) + t * c := by ring
      rw [h6]
      rw [Real.exp_add]
    calc
      ∫ ω : Ω, Real.exp (t * (X ω + c)) ∂μ
          = ∫ ω : Ω, (Real.exp (t * (X ω)) * Real.exp (t * c)) ∂μ := by
            congr
            funext ω
            exact h5 ω
      _ = (∫ ω : Ω, Real.exp (t * (X ω)) ∂μ) * Real.exp (t * c) := by
        rw [integral_mul_right]
      _ = Real.exp (t * c) * ∫ ω : Ω, Real.exp (t * (X ω)) ∂μ := by 
        ring
  linarith