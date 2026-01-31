import Mathlib

/-! ### Brainstormed additional lemmas related to Hahn–Banach, duals, and complements -/

/-- If two elements of the strong dual agree on a dense subset, they are equal. -/
lemma StrongDual.ext_of_dense
    {𝕜 E : Type*}
    [NormedField 𝕜]
    [NormedAddCommGroup E] [NormedSpace 𝕜 E]
    {s : Set E} (hs : Dense s)
    {f g : StrongDual 𝕜 E} (h : ∀ x ∈ s, f x = g x) :
    f = g := by
  -- extensionality: reduce to pointwise equality
  ext x
  -- Consider the continuous linear map underlying `f - g`
  let T : E →L[𝕜] 𝕜 := (f - g : StrongDual 𝕜 E)
  -- First, show that `s` is contained in the zero set of `T`
  have hs_subset : s ⊆ {y : E | T y = 0} := by
    intro y hy
    -- On `s` we have `f y = g y`
    have hy_eq : f y = g y := h y hy
    -- hence `(f - g) y = 0`
    show T y = 0
    simpa [T, sub_eq_add_neg, hy_eq]
  -- The zero set of a continuous map is closed
  have hclosed : IsClosed {y : E | T y = 0} :=
    isClosed_eq T.continuous continuous_const
  -- since the zero set is closed, it contains the closure of `s`
  have hclosure_subset : closure s ⊆ {y : E | T y = 0} :=
    closure_minimal hs_subset hclosed
  -- any point `x` belongs to `closure s` because `s` is dense
  have hx_closure : x ∈ closure s := by
    simpa [hs.closure_eq] using (Set.mem_univ x)
  -- therefore `x` lies in the zero set of `T`
  have hx_zero : T x = 0 := hclosure_subset hx_closure
  -- this is `f x - g x = 0`
  have hfg : f x - g x = 0 := by
    simpa [T, sub_eq_add_neg] using hx_zero
  -- finish with algebra
  exact sub_eq_zero.mp hfg