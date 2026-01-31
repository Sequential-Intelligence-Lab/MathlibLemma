import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Matrix.det_isPolynomial
    {R} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n] :
    ∃ (p : (n → n → R) → R), ∀ (A : Matrix n n R), p (fun i j => A i j) = A.det := by
  have h_main : ∃ (p : (n → n → R) → R), ∀ (A : Matrix n n R), p (fun i j => A i j) = A.det := by
    refine' ⟨fun A => Matrix.det A, _⟩
    intro A
    -- We need to show that Matrix.det (fun i j => A i j) = A.det
    -- Since A : Matrix n n R is the same as n → n → R, (fun i j => A i j) is exactly A
    have h : (fun i j => A i j) = A := by
      funext i j
      <;> rfl
    rw [h]
    -- Now we have Matrix.det A = A.det, which is true by definition
    <;> simp [Matrix.det]
    <;> rfl
  
  exact h_main