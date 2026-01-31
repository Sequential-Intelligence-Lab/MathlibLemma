import Mathlib

-- 83. A lemma that `bernstein n k` achieves its maximum in the interior for `0 < k < n`
lemma bernstein_hasInteriorMax
    (n k : ℕ) (hk : 0 < k) (hkn : k < n) :
    ∃ x : ↑unitInterval,
      IsLocalMax (fun x : ↑unitInterval => bernstein n k x) x ∧
        ∀ y : ↑unitInterval, bernstein n k y ≤ bernstein n k x := by
  sorry