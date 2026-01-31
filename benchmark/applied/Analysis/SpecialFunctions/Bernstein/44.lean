import Mathlib

-- 45. A lemma bounding the sup norm of Bernstein basis functions
lemma bernstein_supNorm_le
    (n : ℕ) :
    ∀ k : Fin (n+1),
      ‖bernstein n k‖ ≤ 1 := by
  sorry
