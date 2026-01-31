import Mathlib


/-
Invariant and forward invariant sets
-/
lemma Flow.restrict_orbit_eq_subtype
    {τ α} [TopologicalSpace τ] [AddMonoid τ] [ContinuousAdd τ]
    [TopologicalSpace α]
    (ϕ : Flow τ α) (s : Set α) (hs : IsInvariant ϕ s) (x : s) :
    Flow.orbit (ϕ.restrict hs) x =
      {y : s | ∃ t, ϕ t (x : α) ∈ s ∧ (ϕ t (x : α) = (y : α))} := by
  -- unfold orbit on the left
  ext y
  constructor
  · -- → direction
    intro hy
    -- hy : y ∈ Flow.orbit (ϕ.restrict hs) x
    -- unfold orbit
    rcases hy with ⟨t, ht⟩
    -- ht : (ϕ.restrict hs) t x = y
    -- compare α-components
    have hval : ((ϕ.restrict hs) t x : α) = (y : α) :=
      congrArg (fun z : s => (z : α)) ht
    -- by definition of restrict, the α-part is ϕ t (x : α)
    have hval' : ϕ t (x : α) = (y : α) := by
      simpa using hval
    -- membership of y in s
    have hy_mem : (y : α) ∈ s := y.property
    -- transport membership along equality
    have hmem : ϕ t (x : α) ∈ s := by
      simpa [hval'] using hy_mem
    exact ⟨t, hmem, hval'⟩
  · -- ← direction
    intro hy
    -- hy : y ∈ {y : s | ∃ t, ϕ t (x : α) ∈ s ∧ ϕ t (x : α) = (y : α)}
    rcases hy with ⟨t, ht_mem, ht_eq⟩
    -- ht_eq : ϕ t (x : α) = (y : α)
    -- show y lies in the orbit of the restricted flow
    -- need: ∃ t, (ϕ.restrict hs) t x = y
    -- first, equality of α-components
    have hval : ((ϕ.restrict hs) t x : α) = (y : α) := by
      -- α-part of restrict is ϕ t (x : α)
      simpa using ht_eq
    -- upgrade to equality in the subtype
    have h_subtype : (ϕ.restrict hs) t x = y := by
      apply Subtype.ext
      exact hval
    exact ⟨t, h_subtype⟩