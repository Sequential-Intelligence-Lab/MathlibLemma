import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Seq.drop_of_ge_length'
    {s : List α} {n : ℕ}
    (h : s.length ≤ n) :
    s.drop n = [] := by
  have h_main : ∀ (s : List α) (n : ℕ), s.length ≤ n → s.drop n = [] := by
    intro s n hn
    induction' s with a as ih
    · -- Base case: s is empty
      simp
    · -- Inductive step: s is a :: as
      simp [List.length, List.drop] at hn ⊢
      <;>
      (try omega) <;>
      (try {
        cases n with
        | zero =>
          simp_all [List.drop]
          <;> omega
        | succ n =>
          simp_all [List.drop]
          <;> try omega
          <;> try {
            have h₁ : (as.length + 1) ≤ n.succ := by omega
            have h₂ : as.length ≤ n := by omega
            have h₃ : as.drop n = [] := ih h₂
            simp_all [List.drop]
          }
      })
      <;>
      (try {
        simp_all [List.drop]
        <;> try omega
        <;> try {
          have h₁ : (as.length + 1) ≤ n := by omega
          have h₂ : as.length ≤ n - 1 := by omega
          have h₃ : as.drop (n - 1) = [] := by
            have h₄ : as.length ≤ n - 1 := h₂
            have h₅ : as.drop (n - 1) = [] := ih h₄
            exact h₅
          simp_all [List.drop]
        }
      })
  
  have h_final : s.drop n = [] := by
    apply h_main s n h
  
  apply h_final