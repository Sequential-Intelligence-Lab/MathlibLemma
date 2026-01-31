import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Finset.ssubset_of_subset_of_not_subset' {α} {s t : Finset α}
    (h₁ : s ⊆ t) (h₂ : ¬ t ⊆ s) : s ⊂ t := by
  have h_main : s ⊂ t := by
    -- Use the definition of strict subset: s ⊆ t and there exists an element in t not in s
    refine' Finset.ssubset_iff_subset_ne.mpr ⟨h₁, _⟩
    -- Since t is not a subset of s, there exists an element in t that is not in s
    intro h
    -- If s = t, then t ⊆ s, which contradicts h₂
    have h₃ : t ⊆ s := by
      rw [h] at *
      <;> simp_all [Finset.subset_iff]
    exact h₂ h₃
  exact h_main