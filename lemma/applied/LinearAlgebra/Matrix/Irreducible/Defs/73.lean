import Mathlib

/-- For an irreducible nonnegative matrix, there exists a strictly positive invariant cone for the
associated linear map. -/
lemma Matrix.IsIrreducible.exists_invariant_positive_cone
    {n : Type*} {A : Matrix n n ℝ}
    [Fintype n] [DecidableEq n]
    (h : Matrix.IsIrreducible A)
    (h_nonneg : ∀ i j, 0 ≤ A i j) :
    ∃ C : Set (n → ℝ),
      (∀ x ∈ C, ∀ i, 0 ≤ x i) ∧
      (∃ x ∈ C, ∀ i, 0 < x i) ∧
      ∀ x ∈ C, A.mulVec x ∈ C := by
  -- Define the cone as all coordinatewise nonnegative vectors
  refine ⟨{x : n → ℝ | ∀ i, 0 ≤ x i}, ?_, ?_, ?_⟩
  · -- Every element in C is coordinatewise nonnegative (by definition)
    intro x hx i
    exact hx i
  · -- There exists a strictly positive vector in C: the constant-1 vector
    refine ⟨(fun _ : n => (1 : ℝ)), ?_, ?_⟩
    · -- Show that the constant-1 vector is in C
      intro i
      exact zero_le_one
    · -- Show that the constant-1 vector is strictly positive in each coordinate
      intro i
      exact zero_lt_one
  · -- C is invariant under A.mulVec
    intro x hx
    -- Need to show: ∀ i, 0 ≤ (A.mulVec x) i
    intro i
    -- Expand mulVec to a sum over j
    -- (A.mulVec x) i = ∑ j, A i j * x j
    simp [Matrix.mulVec]  -- reduce to a sum
    -- Now we show that each term in the sum is nonnegative, then use sum_nonneg
    have hterm : ∀ j : n, 0 ≤ A i j * x j := by
      intro j
      have hA : 0 ≤ A i j := h_nonneg i j
      have hxj : 0 ≤ x j := hx j
      exact mul_nonneg hA hxj
    exact Finset.sum_nonneg (fun j _ => hterm j)