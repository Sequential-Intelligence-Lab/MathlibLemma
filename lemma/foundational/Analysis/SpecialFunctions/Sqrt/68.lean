import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_preimage_Ioi (s : Set ℝ) :
    Real.sqrt ⁻¹' (s ∩ Set.Ioi 0) = {x | 0 < x ∧ √x ∈ s} := by
  ext x
  constructor <;> simp_all [Set.mem_preimage, Set.mem_Ioi, Set.mem_inter_iff]
  -- First inclusion: sqrt_preimage_Ioi ⊆ {x | 0 < x ∧ √x ∈ s}
  <;> intro h
  -- Case analysis on the conditions from the preimage and intersection
  <;> cases' h with h₀ h₁ <;> simp_all
  -- Simplify the conditions to show the required properties
  <;> nlinarith
  -- Use arithmetic to conclude the proof
  <;> nlinarith