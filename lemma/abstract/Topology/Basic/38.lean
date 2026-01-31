import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma isOpen_prod_mk {s : Set X₁} {t : Set X₂}
    [TopologicalSpace X₁] [TopologicalSpace X₂]
    (hs : IsOpen s) (ht : IsOpen t) :
    IsOpen (s ×ˢ t : Set (X₁ × X₂)) := by
  have h1 : IsOpen (s ×ˢ (Set.univ : Set X₂)) := by
    have h : s ×ˢ (Set.univ : Set X₂) = (fun p : X₁ × X₂ => p.1) ⁻¹' s := by
      ext ⟨x₁, x₂⟩
      simp [Set.mem_prod]
      <;> aesop
    rw [h]
    apply IsOpen.preimage
    · exact continuous_fst
    · exact hs
  
  have h2 : IsOpen ((Set.univ : Set X₁) ×ˢ t) := by
    have h : (Set.univ : Set X₁) ×ˢ t = (fun p : X₁ × X₂ => p.2) ⁻¹' t := by
      ext ⟨x₁, x₂⟩
      simp [Set.mem_prod]
      <;> aesop
    rw [h]
    apply IsOpen.preimage
    · exact continuous_snd
    · exact ht
  
  have h3 : (s ×ˢ (Set.univ : Set X₂)) ∩ ((Set.univ : Set X₁) ×ˢ t) = (s ×ˢ t : Set (X₁ × X₂)) := by
    ext ⟨x₁, x₂⟩
    simp [Set.mem_prod, Set.mem_inter_iff]
    <;>
    (try aesop) <;>
    (try tauto) <;>
    (try simp_all) <;>
    (try aesop)
  
  have h4 : IsOpen ((s ×ˢ (Set.univ : Set X₂)) ∩ ((Set.univ : Set X₁) ×ˢ t)) := by
    apply IsOpen.inter h1 h2
  
  have h5 : IsOpen (s ×ˢ t : Set (X₁ × X₂)) := by
    rw [← h3]
    exact h4
  
  exact h5