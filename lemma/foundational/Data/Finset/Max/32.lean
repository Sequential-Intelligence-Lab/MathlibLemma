import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_insert_of_le {α} [LinearOrder α] {a : α} {s : Finset α}
    (hs : s.Nonempty) (h : ∀ x ∈ s, x ≤ a) :
    (insert a s).max' (s.insert_nonempty a) = a := by
  have h_all_le_a : ∀ x ∈ (insert a s), x ≤ a := by
    intro x hx
    simp only [Finset.mem_insert] at hx
    cases hx with
    | inl hx =>
      -- Case: x = a
      simp_all
    | inr hx =>
      -- Case: x ∈ s
      have h₁ : x ≤ a := h x hx
      exact h₁
  
  have h_max_le_a : (insert a s).max' (s.insert_nonempty a) ≤ a := by
    apply Finset.max'_le
    <;> simp_all [Finset.mem_insert]
    <;>
    (try aesop) <;>
    (try
      {
        intro x hx
        have h₁ : x ≤ a := h_all_le_a x hx
        exact h₁
      })
  
  have h_a_le_max : a ≤ (insert a s).max' (s.insert_nonempty a) := by
    have h₁ : a ∈ (insert a s) := by
      simp [Finset.mem_insert]
    -- Use the property that any element in the set is less than or equal to the maximum
    have h₂ : a ≤ (insert a s).max' (s.insert_nonempty a) := by
      apply Finset.le_max'
      <;> simp_all [Finset.mem_insert]
      <;> aesop
    exact h₂
  
  have h_main : (insert a s).max' (s.insert_nonempty a) = a := by
    apply le_antisymm
    · -- Prove that (insert a s).max' (s.insert_nonempty a) ≤ a
      exact h_max_le_a
    · -- Prove that a ≤ (insert a s).max' (s.insert_nonempty a)
      exact h_a_le_max
  
  exact h_main