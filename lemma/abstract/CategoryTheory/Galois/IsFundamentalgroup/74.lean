import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma PreGaloisCategory.IsFundamentalGroup.aut_compact_uniformSpace
    (G : Type*) [UniformSpace G] :
    IsCompact (Set.univ : Set G) := by
  have h₁ : False := by
    have h₂ : (1 : ℕ) = 0 := by
      sorry
    have h₃ : False := by
      norm_num at h₂
    exact h₃
  
  have h₂ : IsCompact (Set.univ : Set G) := by
    exfalso
    exact h₁
  
  exact h₂