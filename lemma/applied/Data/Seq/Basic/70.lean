import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma List.all_map_iff'
    {α β : Type} 
    {s : List α} 
    {f : α → β} 
    {p : β → Prop} : 
    (∀ y ∈ s.map f, p y) ↔ ∀ x ∈ s, p (f x) := by
  have h_main : (∀ y ∈ s.map f, p y) ↔ (∀ x ∈ s, p (f x)) := by
    induction s with
    | nil =>
      -- Base case: When the list is empty
      simp
    | cons x xs ih =>
      -- Inductive step: Assume the statement holds for xs, prove for x :: xs
      simp_all [List.map, List.mem_cons]
      <;>
      constructor <;>
      intro h <;>
      (try
        {
          have h₁ := h (f x)
          have h₂ := h
          simp at h₁ h₂
          <;>
          (try tauto) <;>
          (try
            {
              constructor <;>
              (try simp_all) <;>
              (try tauto)
            })
        }) <;>
      (try
        {
          constructor <;>
          (try intro y hy <;>
            (try simp_all [List.mem_cons] <;>
              (try
                {
                  aesop
                })) <;>
            (try
              {
                cases hy <;>
                simp_all [List.mem_cons] <;>
                aesop
              })) <;>
          (try intro y hy <;>
            (try simp_all [List.mem_cons] <;>
              (try
                {
                  aesop
                })) <;>
            (try
              {
                cases hy <;>
                simp_all [List.mem_cons] <;>
                aesop
              }))
        }) <;>
      (try
        {
          simp_all [List.mem_cons]
          <;>
          tauto
        })
  exact h_main