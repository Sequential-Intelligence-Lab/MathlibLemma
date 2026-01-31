import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_subset_image {α} [LinearOrder α] [DecidableEq α]
    (s : Finset α) (hs : s.Nonempty) :
    s.max' hs ∈ s.image id := by
  have h₁ : s.max' hs ∈ s := by
    apply Finset.max'_mem s hs
  
  have h₂ : s.max' hs ∈ s.image id := by
    -- Use the fact that s.max' hs is in s to show it is in the image of s under id
    rw [Finset.mem_image]
    -- We need to find an element in s that maps to s.max' hs under id
    refine' ⟨s.max' hs, h₁, _⟩
    -- Since id is the identity function, id (s.max' hs) = s.max' hs
    <;> simp [id]
  
  exact h₂