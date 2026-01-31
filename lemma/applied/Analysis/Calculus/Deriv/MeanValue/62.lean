import Mathlib

open scoped Topology

lemma derivWithin_unique_of_convex {f : ℝ → ℝ} {D : Set ℝ} {x : ℝ}
    (hD : Convex ℝ D)
    (hx : x ∈ interior D)
    {d1 d2 : ℝ}
    (h1 : HasDerivWithinAt f d1 D x)
    (h2 : HasDerivWithinAt f d2 D x) :
    d1 = d2 := by
  -- Step 1: Show that D is a neighborhood of x
  have hD_nhd : D ∈ 𝓝 x := by
    have hInt : interior D ∈ 𝓝 x := isOpen_interior.mem_nhds hx
    exact Filter.mem_of_superset hInt interior_subset

  -- Step 2: Upgrade HasDerivWithinAt to HasDerivAt
  have hAt1 : HasDerivAt f d1 x := h1.hasDerivAt hD_nhd
  have hAt2 : HasDerivAt f d2 x := h2.hasDerivAt hD_nhd

  -- Step 3: Use uniqueness of the usual derivative via `deriv`
  have hd1 : deriv f x = d1 := hAt1.deriv
  have hd2 : deriv f x = d2 := hAt2.deriv

  -- Step 4: Conclude that d1 = d2
  exact hd1.symm.trans hd2