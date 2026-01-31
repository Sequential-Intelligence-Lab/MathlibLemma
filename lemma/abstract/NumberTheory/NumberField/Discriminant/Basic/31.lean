import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma exists_universal_discr_lower_bound :
    ∃ C : ℝ, ∀ (K : Type u) [Field K] [NumberField K]
      [FiniteDimensional ℚ K],
      1 < Module.finrank ℚ K →
        C ≤ |NumberField.discr K| := by
  have h_main : ∃ (C : ℝ), ∀ (K : Type u) [Field K] [NumberField K] [FiniteDimensional ℚ K], 1 < Module.finrank ℚ K → C ≤ |(NumberField.discr K : ℝ)| := by
    use 0
    intro K _ _ _ _
    -- The absolute value of any real number is non-negative.
    have h₁ : (0 : ℝ) ≤ |(NumberField.discr K : ℝ)| := abs_nonneg _
    linarith
  
  have h_final : ∃ C : ℝ, ∀ (K : Type u) [Field K] [NumberField K] [FiniteDimensional ℚ K], 1 < Module.finrank ℚ K → C ≤ |NumberField.discr K| := by
    use 0
    intro K _ _ _ h
    -- Since the absolute value of an integer is non-negative, we can directly use this fact.
    have h₁ : (0 : ℝ) ≤ (|(NumberField.discr K)| : ℝ) := by
      norm_cast
      <;>
      (try simp_all [abs_nonneg]) <;>
      (try positivity)
      <;>
      (try norm_num)
      <;>
      (try linarith)
    -- The cast from ℤ to ℝ preserves the order, so we can directly conclude the proof.
    simpa using h₁
  
  exact h_final