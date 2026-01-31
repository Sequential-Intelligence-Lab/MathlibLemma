import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_subset_image {α} [LinearOrder α] [DecidableEq α]
    (s : Finset α) (hs : s.Nonempty) :
    s.min' hs ∈ s.image id := by
  have h₁ : s.min' hs ∈ s := by
    apply Finset.min'_mem
    <;> assumption
  
  have h₂ : s.min' hs ∈ s.image id := by
    -- Use the fact that the minimum element is in s and the definition of image to show it is in s.image id
    have h₃ : s.min' hs ∈ s.image id := by
      -- We need to find an element in s that maps to s.min' hs under id
      -- Since id is the identity function, we can directly use s.min' hs
      apply Finset.mem_image.mpr
      refine' ⟨s.min' hs, h₁, _⟩
      -- Simplify the expression to show that id (s.min' hs) = s.min' hs
      simp [id]
    exact h₃
  
  exact h₂