import Mathlib

universe u

variable {α : Type u}

open scoped ENNReal BigOperators
open Set Filter MeasureTheory

variable [MeasurableSpace α] [MeasurableSingletonClass α]

/-! ### Brainstormed lemmas about `dirac` and basic measure theory -/
lemma Measure.dirac_mutuallySingular_iff' (a : α) (μ : Measure α) :
    Measure.MutuallySingular μ (Measure.dirac a) ↔ μ {a} = 0 := by
  classical
  constructor
  · -- (→) If μ and dirac a are mutually singular, then μ {a} = 0.
    intro h
    rcases h with ⟨s, hs_meas, hμs, hdiracs⟩
    -- Show that a ∉ sᶜ, otherwise dirac a sᶜ = 1, contradicting hdiracs = 0.
    have ha_not_mem_scompl : a ∉ sᶜ := by
      by_contra hmem
      -- If a ∈ sᶜ, dirac a sᶜ = 1, contradicting hdiracs = 0.
      have : (Measure.dirac a) sᶜ = 1 := by
        simp [hmem]
      -- Combine with hdiracs : dirac a sᶜ = 0
      simpa [this] using hdiracs
    -- Hence a ∈ s
    have ha_mem_s : a ∈ s := by
      -- not in complement means in the set
      simpa [mem_compl] using ha_not_mem_scompl
    -- From a ∈ s we get {a} ⊆ s
    have hsubset : ({a} : Set α) ⊆ s := by
      intro x hx
      have hx' : x = a := by
        simpa using hx
      subst hx'
      exact ha_mem_s
    -- Use monotonicity of μ to bound μ {a} by μ s = 0
    have hμ_le : μ {a} ≤ μ s := measure_mono hsubset
    have hμa_le_zero : μ {a} ≤ 0 := by simpa [hμs] using hμ_le
    -- In ℝ≥0∞, if μ {a} ≤ 0 then μ {a} = 0
    have zero_le : (0 : ℝ≥0∞) ≤ μ {a} := bot_le
    exact le_antisymm hμa_le_zero zero_le
  · -- (←) If μ {a} = 0, then μ and dirac a are mutually singular.
    intro hμa
    -- Take s = {a}
    refine ⟨{a}, ?meas, ?μzero, ?diracZero⟩
    · -- measurability of {a}
      simpa using (measurableSet_singleton a)
    · -- μ {a} = 0
      simpa using hμa
    · -- dirac a {a}ᶜ = 0 since a ∉ {a}ᶜ
      have ha_not_mem : a ∉ ({a}ᶜ : Set α) := by
        simp
      simp [ha_not_mem]