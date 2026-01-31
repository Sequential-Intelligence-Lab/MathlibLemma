import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


/-! ### Brainstormed lemmas about `moment` -/

open scoped BigOperators
open MeasureTheory

theorem moment_add_measure'
    {Ω : Type*} [MeasurableSpace Ω]
    (μ ν : Measure Ω)
    (X : Ω → ℝ) (p : ℕ)
    (hμ : MeasureTheory.Integrable (fun ω ↦ X ω ^ p) μ)
    (hν : MeasureTheory.Integrable (fun ω ↦ X ω ^ p) ν) :
    ProbabilityTheory.moment X p (μ + ν) =
      ProbabilityTheory.moment X p μ + ProbabilityTheory.moment X p ν := by
  have h1 : ProbabilityTheory.moment X p (μ + ν) = ∫ x, (X x) ^ p ∂(μ + ν) := by
    simp [ProbabilityTheory.moment]
  have h2 : ProbabilityTheory.moment X p μ = ∫ x, (X x) ^ p ∂μ := by
    simp [ProbabilityTheory.moment]
  have h3 : ProbabilityTheory.moment X p ν = ∫ x, (X x) ^ p ∂ν := by
    simp [ProbabilityTheory.moment]
  rw [h1, h2, h3]
  have h4 : MeasureTheory.Integrable (fun ω : Ω => X ω ^ p) (μ + ν) := by
    exact MeasureTheory.Integrable.add_measure hμ hν
  simp [MeasureTheory.integral_add_measure, h4, hμ, hν]