import Mathlib

open MeasureTheory

variable {α E F : Type*}
variable [MeasurableSpace α]
variable [NormedAddCommGroup E] [NormedAddCommGroup F]
variable [NormedSpace ℝ E] [NormedSpace ℝ F]

variable {qR : ℝ}
variable {μ : Measure α}
variable {f g : α → E}

/-! ### Scaling and linear maps with eLpNorm -/

lemma eLpNorm'_sub_le
    (hf : AEStronglyMeasurable f μ)
    (hg : AEStronglyMeasurable g μ)
    (hq1 : 1 ≤ qR) :
    eLpNorm' (f - g) qR μ
      ≤ eLpNorm' f qR μ + eLpNorm' g qR μ := by
  -- Apply Minkowski inequality to `f` and `-g`
  have h :=
    eLpNorm'_add_le (μ := μ) (q := qR)
      (f := f) (g := -g) hf hg.neg hq1
  -- Rewrite `f - g` as `f + -g` and simplify `eLpNorm' (-g)`
  simpa [sub_eq_add_neg, eLpNorm'_neg] using h