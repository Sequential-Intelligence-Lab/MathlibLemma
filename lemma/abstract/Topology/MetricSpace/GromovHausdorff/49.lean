import Mathlib

/-- If a map between GH-limits preserves distances on a dense subset, then it is an isometry. -/
lemma GromovHausdorff.isometry_of_preserves_dist_on_dense
    {X Y : Type*} [MetricSpace X] [MetricSpace Y]
    [CompactSpace X] [CompactSpace Y] [Nonempty X] [Nonempty Y]
    (f : X → Y)
    (s : Set X) (hs : Dense s)
    (h : ∀ x y : X, x ∈ s → y ∈ s → dist x y = dist (f x) (f y))
    (hf : Continuous f)
    (hBij : Function.Injective f) :
    Isometry f := by
  -- We will not actually use `hBij` or compactness, but they are in the hypotheses.
  classical
  -- Define the auxiliary function on the product space
  let g : X × X → ℝ :=
    fun p => dist p.1 p.2 - dist (f p.1) (f p.2)

  -- Show that `g` is continuous
  have hcont : Continuous g := by
    have h1 : Continuous fun p : X × X => dist p.1 p.2 :=
      continuous_fst.dist continuous_snd
    have h2 : Continuous fun p : X × X => dist (f p.1) (f p.2) :=
      (hf.comp continuous_fst).dist (hf.comp continuous_snd)
    exact h1.sub h2

  -- `s ×ˢ s` is dense in `X × X`
  have hdense : Dense (s ×ˢ s : Set (X × X)) := hs.prod hs
  have hclosure :
      closure (s ×ˢ s : Set (X × X)) = (Set.univ : Set (X × X)) :=
    hdense.closure_eq

  -- On `s ×ˢ s`, the function `g` is identically zero
  have hsubset : (s ×ˢ s : Set (X × X)) ⊆ g ⁻¹' ({0} : Set ℝ) := by
    rintro ⟨x, y⟩ ⟨hx, hy⟩
    -- Use the hypothesis `h` to simplify
    simp [g, h x y hx hy]

  -- The preimage of `{0}` under `g` is closed
  have hclosed : IsClosed (g ⁻¹' ({0} : Set ℝ)) :=
    isClosed_singleton.preimage hcont

  -- Since `s ×ˢ s` is dense and contained in this closed set, the closed set is all of `X × X`
  have hcl_sub :
      closure (s ×ˢ s : Set (X × X)) ⊆ g ⁻¹' ({0} : Set ℝ) :=
    closure_minimal hsubset hclosed

  have hpre : (Set.univ : Set (X × X)) ⊆ g ⁻¹' ({0} : Set ℝ) := by
    simpa [hclosure] using hcl_sub

  -- Hence `g p = 0` for all `p`
  have hAll : ∀ p : X × X, g p = 0 := by
    intro p
    have : p ∈ g ⁻¹' ({0} : Set ℝ) := hpre (by trivial)
    -- Unfold the preimage and `g`
    simpa [Set.preimage, g] using this

  -- Now use this to show that `f` preserves distances everywhere
  refine Isometry.of_dist_eq ?_
  intro x y
  have hxy' : dist x y - dist (f x) (f y) = 0 := by
    simpa [g] using hAll (x, y)
  -- From `a - b = 0` we get `a = b`, hence symmetry gives the required direction
  exact (sub_eq_zero.mp hxy').symm