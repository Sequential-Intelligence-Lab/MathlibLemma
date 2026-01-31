import Mathlib

lemma dotProduct_eq_zero_of_disjoint_support
    [Fintype m] [DecidableEq m]
    [NonUnitalNonAssocSemiring α] [DecidableEq α]
    (v w : m → α)
    (hdisj :
      (Finset.univ.filter (fun j => v j ≠ 0)) ∩
      (Finset.univ.filter (fun j => w j ≠ 0)) = ∅) :
    v ⬝ᵥ w = 0 := by
  classical
  -- Step 1: Show that for every index, at least one coordinate is zero
  have hIndex : ∀ j : m, v j = 0 ∨ w j = 0 := by
    intro j
    by_contra h
    push_neg at h  -- now h : v j ≠ 0 ∧ w j ≠ 0
    have hjv : j ∈ Finset.univ.filter (fun j => v j ≠ 0) := by
      exact Finset.mem_filter.mpr ⟨Finset.mem_univ j, h.left⟩
    have hjw : j ∈ Finset.univ.filter (fun j => w j ≠ 0) := by
      exact Finset.mem_filter.mpr ⟨Finset.mem_univ j, h.right⟩
    have hjinter :
        j ∈ (Finset.univ.filter (fun j => v j ≠ 0)) ∩
            (Finset.univ.filter (fun j => w j ≠ 0)) :=
      Finset.mem_inter.mpr ⟨hjv, hjw⟩
    have : j ∈ (∅ : Finset m) := by
      simpa [hdisj] using hjinter
    exact Finset.not_mem_empty j this
  -- Step 2: Use this to show each product v j * w j is zero
  have hmulzero : ∀ j : m, v j * w j = 0 := by
    intro j
    cases hIndex j with
    | inl hv =>
        -- v j = 0
        simpa [hv]  -- zero_mul
    | inr hw =>
        -- w j = 0
        simpa [hw]  -- mul_zero
  -- Step 3: Evaluate the dot product as a sum of zeros
  unfold dotProduct
  simp [hmulzero]