import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


variable {α β γ δ : Type*}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_add_dirac_isProbability_iff {a b : α} :
    MeasureTheory.IsProbabilityMeasure (Measure.dirac a + Measure.dirac b) ↔ False := by
  have h1 : ¬ MeasureTheory.IsProbabilityMeasure (Measure.dirac a + Measure.dirac b) := by
    intro h
    have h2 : (Measure.dirac a + Measure.dirac b) Set.univ = 1 := by
      have h3 : MeasureTheory.IsProbabilityMeasure (Measure.dirac a + Measure.dirac b) := h
      have h4 : (Measure.dirac a + Measure.dirac b) Set.univ = 1 := by
        apply h3.measure_univ
      exact h4
    have h3 : (Measure.dirac a + Measure.dirac b) Set.univ = 2 := by
      have h4 : (Measure.dirac a) Set.univ = 1 := by
        simp [Measure.dirac_apply]
      have h5 : (Measure.dirac b) Set.univ = 1 := by
        simp [Measure.dirac_apply]
      calc
        (Measure.dirac a + Measure.dirac b) Set.univ = (Measure.dirac a) Set.univ + (Measure.dirac b) Set.univ := by
          rw [Measure.add_apply]
        _ = 1 + 1 := by rw [h4, h5]
        _ = 2 := by norm_num
    rw [h3] at h2
    all_goals
      norm_num at h2
  constructor
  · -- Assume `IsProbabilityMeasure (Measure.dirac a + Measure.dirac b)`, prove `False`
    intro h
    exfalso
    apply h1 h
  · -- Assume `False`, prove `IsProbabilityMeasure (Measure.dirac a + Measure.dirac b)`
    intro h
    cases h