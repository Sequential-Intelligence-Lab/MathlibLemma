import Mathlib

-- 1. A version of Bernstein probability for arbitrary `x : ℝ` restricted to `[0,1]` range
lemma bernstein_sum_eq_one_of_mem_Icc (n : ℕ) {x : ℝ} (hx : x ∈ Set.Icc (0 : ℝ) 1) :
    (∑ k : Fin (n + 1), (bernstein n k ⟨x, hx⟩ : ℝ)) = 1 := by
  -- This is exactly the standard Bernstein sum lemma specialized to `⟨x, hx⟩`
  simpa using (bernstein_sum (n := n) (x := ⟨x, hx⟩))