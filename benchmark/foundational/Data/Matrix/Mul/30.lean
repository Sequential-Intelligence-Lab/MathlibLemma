import Mathlib

open BigOperators

variable {α ι m : Type _}

-- A version using dotProduct, assuming the notation `⬝ᵥ` is dotProduct
-- If this notation is not available in your environment, you may need
-- to adjust it to the correct dot product notation.
lemma dotProduct_sum_left₁
    [Fintype m] [DecidableEq m] [NonUnitalNonAssocSemiring α]
    (s : Finset ι) (u : ι → m → α) (v : m → α) :
    (Finset.sum s (fun i => u i)) ⬝ᵥ v =
      Finset.sum s (fun i => u i ⬝ᵥ v) := by
  sorry

-- A fully explicit version in terms of double sums
lemma dotProduct_sum_left₂
    [Fintype m] [DecidableEq m] [NonUnitalNonAssocSemiring α]
    (s : Finset ι) (u : ι → m → α) (v : m → α) :
    (Finset.sum s fun i => Finset.sum (Finset.univ : Finset m) fun j => u i j * v j) =
      Finset.sum s fun i => Finset.sum (Finset.univ : Finset m) fun j => u i j * v j := by
  sorry