import Mathlib

/-- If a sequence in a metric space has a unique cluster point, then it converges.

  Here the hypothesis is actually stronger than “unique cluster point”: it states that
  the closure of the range of `u` is exactly `{x}` (up to a trivial rewriting),
  which forces the sequence to be constantly equal to `x`. -/
lemma tendsto_of_uniqueClusterPt {X : Type*} [MetricSpace X]
    (u : ℕ → X) (x : X)
    (h : {y | y ∈ closure (Set.range u)} = {x}) :
    Filter.Tendsto u Filter.atTop (nhds x) := by
  -- First show the sequence is constant, equal to `x`.
  have hconst : ∀ n, u n = x := by
    intro n
    -- `u n` is in the closure of the range
    have hmem_closure : u n ∈ closure (Set.range u) :=
      subset_closure ⟨n, rfl⟩
    -- View this as membership in `{y | y ∈ closure (Set.range u)}`
    have hmem_setOf : u n ∈ {y | y ∈ closure (Set.range u)} := by
      simpa using hmem_closure
    -- Transport membership using the set equality `h`
    have hmem_singleton : u n ∈ ({x} : Set X) := by
      simpa [h] using hmem_setOf
    -- Membership in a singleton gives equality
    simpa using hmem_singleton

  -- Upgrade to equality of functions: `u` is the constant function `x`.
  have hconst_fun : u = fun _ : ℕ => x := by
    funext n
    exact hconst n

  -- A constant function converges to its constant value.
  simpa [hconst_fun] using
    (tendsto_const_nhds : Filter.Tendsto (fun _ : ℕ => x) Filter.atTop (nhds x))