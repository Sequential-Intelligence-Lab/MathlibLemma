import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma list_take_drop_add {α : Type*} (s : List α) (n m : ℕ) :
    (s.drop n).take m = (s.take (n + m)).drop n := by
  have h : ∀ (s : List α) (n m : ℕ), (s.drop n).take m = (s.take (n + m)).drop n := by
    intro s
    induction' s with hd tl IH
    · intro n m
      simp
    · intro n m
      cases n with
      | zero =>
        simp [List.take, List.drop]
        <;>
        (try cases m <;> simp_all [List.take, List.drop]) <;>
        (try ring_nf at * <;> simp_all [List.take, List.drop]) <;>
        (try omega)
      | succ n =>
        cases m with
        | zero =>
          simp [List.take, List.drop]
        | succ m =>
          simp [List.take, List.drop, Nat.add_assoc] at *
          <;>
          (try simp_all [List.take, List.drop, Nat.add_assoc]) <;>
          (try ring_nf at * <;> simp_all [List.take, List.drop, Nat.add_assoc]) <;>
          (try omega)
          <;>
          (try {
            simp_all [List.take, List.drop, Nat.add_assoc]
            <;>
            try omega
            <;>
            try ring_nf at * <;> simp_all [List.take, List.drop, Nat.add_assoc]
            <;>
            try omega
          })
          <;>
          (try {
            simp_all [List.take, List.drop, Nat.add_assoc]
            <;>
            try omega
            <;>
            try ring_nf at * <;> simp_all [List.take, List.drop, Nat.add_assoc]
            <;>
            try omega
          })
  exact h s n m