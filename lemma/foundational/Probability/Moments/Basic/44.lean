import Mathlib

/-! ### Brainstormed lemmas about `moment` -/
lemma centralMoment_zero_of_not_integrable
    {Ω : Type*} {mΩ : MeasurableSpace Ω}
    {X : Ω → ℝ} {p : ℕ} {μ : MeasureTheory.Measure Ω}
    (m : ℝ)
    (hX : ¬ MeasureTheory.Integrable (fun ω ↦ (X ω - m) ^ p) μ) :
    ProbabilityTheory.centralMoment X p μ = 0 := by
  -- Unfolding `centralMoment` shows it uses the mean `∫ X ∂μ` as center,
  -- and does not branch on integrability of `(X - m)^p`.
  -- Hence `hX` does not simplify the definition.
  -- The goal reduces to an unconditional integral that `hX` does not control:
  --
  --   ⊢ ∫ x, (X x - ∫ x, X x ∂μ) ^ p ∂μ = 0
  --
  -- which cannot be proved from `hX`.
  --
  -- In other words, the statement of this lemma is not compatible with
  -- the current definition of `ProbabilityTheory.centralMoment` in Mathlib,
  -- so there is no valid proof.
  --
  -- We expose this mismatch by explicitly unfolding the definition:
  unfold ProbabilityTheory.centralMoment
  -- At this point we are stuck: there is no way to use `hX`
  -- to conclude the integral is 0.
  --
  -- So we admit the goal here to indicate that, as stated, the lemma
  -- cannot be proved under the existing definition.
  admit