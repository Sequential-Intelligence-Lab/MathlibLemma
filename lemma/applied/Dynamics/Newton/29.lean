import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

def newtonMap {K : Type*} [Field K] (P : Polynomial K) : K → K := fun x => x

lemma newtonMap_iterate_finite_orbit_periodic
    {K : Type*} [Field K] (P : Polynomial K) (x : K)
    (hfin : (Set.range fun n : ℕ => (P.newtonMap^[n]) x).Finite) :
    ∃ m n, m < n ∧ (P.newtonMap^[m]) x = (P.newtonMap^[n]) x := by
  have h_main : ∃ (m n : ℕ), m < n ∧ (P.newtonMap^[m]) x = (P.newtonMap^[n]) x := by
    by_contra! h
    have h₁ : Function.Injective (fun n : ℕ => (P.newtonMap^[n]) x) := by
      intro m n hmn
      by_contra hne
      have h₂ : m ≠ n := hne
      have h₃ : m < n ∨ n < m := by
        cases' lt_or_gt_of_ne h₂ with hlt hlt
        · exact Or.inl hlt
        · exact Or.inr hlt
      cases' h₃ with hlt hlt
      · have h₄ := h m n hlt
        simp_all
      · have h₄ := h n m hlt
        simp_all
    have h₂ : Set.Infinite (Set.range fun n : ℕ => (P.newtonMap^[n]) x) := by
      apply Set.infinite_range_of_injective
      exact h₁
    exact h₂ hfin
  exact h_main