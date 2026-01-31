import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_insert_of_ge {α} [LinearOrder α] {a : α} {s : Finset α}
    (hs : s.Nonempty) (h : ∀ x ∈ s, a ≤ x) :
    (insert a s).min' (s.insert_nonempty a) = a := by
  have h_a_in : a ∈ insert a s := by
    simp [Finset.mem_insert]
  
  have h_min'_le_a : (insert a s).min' (s.insert_nonempty a) ≤ a := by
    have h₁ : (insert a s).min' (s.insert_nonempty a) ≤ a := by
      apply Finset.min'_le
      exact h_a_in
    exact h₁
  
  have h_a_le_min' : a ≤ (insert a s).min' (s.insert_nonempty a) := by
    have h₁ : (insert a s).Nonempty := s.insert_nonempty a
    have h₂ : ∀ x ∈ (insert a s), a ≤ x := by
      intro x hx
      simp only [Finset.mem_insert] at hx
      cases hx with
      | inl hx =>
        -- Case: x = a
        rw [hx]
        <;> simp
      | inr hx =>
        -- Case: x ∈ s
        exact h x hx
    -- Use the fact that `a` is a lower bound for `insert a s` to show `a ≤ min'`
    have h₃ : a ≤ (insert a s).min' (s.insert_nonempty a) := by
      apply Finset.le_min'
      <;> aesop
    exact h₃
  
  have h_main : (insert a s).min' (s.insert_nonempty a) = a := by
    apply le_antisymm
    · -- Prove (insert a s).min' (s.insert_nonempty a) ≤ a
      exact h_min'_le_a
    · -- Prove a ≤ (insert a s).min' (s.insert_nonempty a)
      exact h_a_le_min'
  
  apply h_main