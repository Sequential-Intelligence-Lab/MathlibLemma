import Mathlib


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_ne_dirac_iff_exists_measurableSet_of_nontrivial
    [Nonempty α] [MeasurableSingletonClass α] {x y : α} :
    Measure.dirac x ≠ Measure.dirac y ↔
      ∃ s, MeasurableSet s ∧ x ∈ s ∧ y ∉ s := by
  classical
  constructor
  · -- (→) direction
    intro h
    -- From inequality of measures, get x ≠ y.
    have hxy : x ≠ y := by
      intro hxy'
      apply h
      simpa [hxy']  -- dirac x = dirac y if x = y
    -- Use the measurable singleton {x} to separate x and y.
    refine ⟨{x}, ?_, ?_, ?_⟩
    · -- measurability of singleton
      simpa using (MeasurableSet.singleton x)
    · -- x ∈ {x}
      simp
    · -- y ∉ {x} since x ≠ y
      have hyx : y ≠ x := ne_comm.mp hxy
      simp [Set.mem_singleton_iff, hyx]
  · -- (←) direction
    rintro ⟨s, hs, hxs, hys⟩ h_eq
    -- Evaluate equality on s and show contradiction.
    have hval := congrArg (fun μ : Measure α => μ s) h_eq
    have hx1 : (Measure.dirac x) s = (1 : ℝ≥0∞) := by
      simp [hxs]
    have hy0 : (Measure.dirac y) s = (0 : ℝ≥0∞) := by
      simp [hys]
    have : (1 : ℝ≥0∞) = 0 := by
      simpa [hx1, hy0] using hval
    exact one_ne_zero this