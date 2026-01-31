import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma spectrum.eq_of_eq_on_resolventSet
    {R A : Type*} [CommSemiring R] [Ring A] [Algebra R A]
    {a b : A}
    (h : ∀ r : R, r ∈ resolventSet R a ↔ r ∈ resolventSet R b) :
    spectrum R a = spectrum R b := by
  have h_main : ∀ (r : R), r ∈ spectrum R a ↔ r ∈ spectrum R b := by
    intro r
    have h₁ : (r ∈ resolventSet R a ↔ r ∈ resolventSet R b) := h r
    have h₂ : (r ∈ spectrum R a ↔ ¬IsUnit (algebraMap R A r - a)) := by
      simp [spectrum, resolventSet]
      <;>
      tauto
    have h₃ : (r ∈ spectrum R b ↔ ¬IsUnit (algebraMap R A r - b)) := by
      simp [spectrum, resolventSet]
      <;>
      tauto
    have h₄ : (r ∈ resolventSet R a ↔ IsUnit (algebraMap R A r - a)) := by
      simp [resolventSet]
    have h₅ : (r ∈ resolventSet R b ↔ IsUnit (algebraMap R A r - b)) := by
      simp [resolventSet]
    have h₆ : (IsUnit (algebraMap R A r - a) ↔ IsUnit (algebraMap R A r - b)) := by
      calc
        IsUnit (algebraMap R A r - a) ↔ r ∈ resolventSet R a := by
          rw [h₄]
          <;> simp
        _ ↔ r ∈ resolventSet R b := by rw [h₁]
        _ ↔ IsUnit (algebraMap R A r - b) := by
          rw [h₅]
          <;> simp
    have h₇ : (¬IsUnit (algebraMap R A r - a) ↔ ¬IsUnit (algebraMap R A r - b)) := by
      constructor <;> intro h₈ <;>
      (try contradiction) <;>
      (try simp_all [not_isUnit]) <;>
      (try tauto)
    calc
      r ∈ spectrum R a ↔ ¬IsUnit (algebraMap R A r - a) := by rw [h₂]
      _ ↔ ¬IsUnit (algebraMap R A r - b) := by rw [h₇]
      _ ↔ r ∈ spectrum R b := by
        rw [h₃]
        <;> simp
  
  have h_final : spectrum R a = spectrum R b := by
    apply Set.ext
    intro r
    exact h_main r
  
  exact h_final