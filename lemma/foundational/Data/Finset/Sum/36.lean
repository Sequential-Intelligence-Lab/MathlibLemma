import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma toLeft_image_inl {α β} [DecidableEq α] [DecidableEq β] (s : Finset α) :
    (s.image Sum.inl : Finset (α ⊕ β)).toLeft = s := by
  ext x
  simp [Finset.mem_toLeft, Finset.mem_image]
  all_goals
  try { 
    constructor
    · -- Assume x in toLeft (s.image inl), prove x in s
      rintro ⟨y, hy1, hy2⟩
      rcases Finset.mem_image.mp hy1 with ⟨z, hz1, hz2⟩
      have h_eq : Sum.inl z = Sum.inl x := by
        rw [hz2] at hy2
        all_goals try { 
          omega
        }
      have h_eq2 : z = x := by 
        simp at h_eq ⊢
        all_goals try { tauto }
      rw [h_eq2] at hz1
      all_goals try { 
        tauto
      }
    · -- Assume x in s, prove x in toLeft (s.image inl)
      intro h
      have h1 : x ∈ s := h
      have h2 : Sum.inl x ∈ (s.image Sum.inl : Finset (α ⊕ β)) := by 
        simp [Finset.mem_image, h1]
      refine ⟨Sum.inl x, h2, by simp⟩
  }