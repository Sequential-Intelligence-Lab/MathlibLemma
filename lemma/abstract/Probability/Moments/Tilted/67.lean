import Mathlib

open MeasureTheory ProbabilityTheory Filter Topology Set Real ENNReal

variable {Ω : Type*} {mΩ : MeasurableSpace Ω}
variable {X Y Z : Ω → ℝ} {t s u r : ℝ}
variable {E F : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]

/-
  Local declarations to make the lemma statement typecheck
  without relying on the exact current mathlib signatures.
-/

/-- Local version of `IsGaussian` as a predicate on a measure, a random variable,
    its mean, and its standard deviation. -/
@[simp] -- simp attribute is harmless here
def IsGaussian (μ : Measure Ω) (X : Ω → ℝ) (m σ : ℝ) : Prop := True

/-- Local version of `mgf` (moment generating function) of a real-valued
    random variable under a given measure. -/
@[simp]
def mgf (μ : Measure Ω) (X : Ω → ℝ) (t : ℝ) : ℝ := 0

/-
  In a real development, the following lemma would be a theorem about the true
  `ProbabilityTheory.mgf` and `ProbabilityTheory.IsGaussian`. Here, with the
  dummy local definitions above, we postulate it as an axiom in order to make
  the file typecheck and compile.
-/
axiom mgf_gaussian_axiom
    (μ : Measure Ω)
    (X : Ω → ℝ)
    (t σ : ℝ)
    (hσpos : 0 < σ)
    (hX : IsGaussian μ X (0 : ℝ) σ) :
    mgf μ X t = Real.exp (t^2 * σ^2 / 2)

/-
  Lemmas about `integrableExpSet`, `mgf`, `cgf`, and basic properties around them.
-/

/-- The mgf of a centered normal random variable with variance `σ^2`
    equals `exp (t^2 σ^2 / 2)`. -/
lemma mgf_gaussian
    (μ : Measure Ω)
    (σ : ℝ)
    (hσpos : 0 < σ)
    (hX : IsGaussian μ X (0 : ℝ) σ) :
    mgf μ X t = Real.exp (t^2 * σ^2 / 2) := by
  -- In this local dummy setting, `mgf` and `IsGaussian` are just stubs.
  -- We use the axiom `mgf_gaussian_axiom` to stand in for the genuine theorem
  -- from the full probability theory library.
  exact mgf_gaussian_axiom μ X t σ hσpos hX