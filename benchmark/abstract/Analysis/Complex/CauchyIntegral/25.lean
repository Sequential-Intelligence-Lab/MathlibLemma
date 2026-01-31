import Mathlib

/-! ### Complex-analytic / measure / topology interaction lemmas -/

variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
  [NormedAddCommGroup F] [NormedSpace ℂ F]

/-! #### Rectangle / annulus / circle integral related lemmas -/

/-- A version of `ball_realSubring_subset` phrased using the real numbers as a subset of `ℂ`. -/
lemma Complex.ball_realSubring_subset {c : ℝ} {r : ℝ} :
    ((fun x : ℝ => (x : ℂ)) ⁻¹' (Metric.ball (c : ℂ) r) : Set ℝ) ⊆
      Metric.ball c r :=
by
  sorry

/-- A version of `ball_realSubfield_subset` phrased using the real numbers
as a subfield of `ℂ`. -/
lemma Complex.ball_realSubfield_subset {c : ℂ} {r : ℝ} :
    (Subtype.val ⁻¹' (Metric.ball c r) :
        Set {x : ℂ // x ∈ Set.range (fun x : ℝ => (x : ℂ))}) ⊆
      (Subtype.val ⁻¹' (Metric.ball c r) :
        Set {x : ℂ // x ∈ Set.range (fun x : ℝ => (x : ℂ))}) :=
by
  sorry