import Mathlib


variable {𝕜 : Type*} [NontriviallyNormedField 𝕜]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕜 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {G : Type*} [NormedAddCommGroup G] [NormedSpace 𝕜 G]
variable {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]

open Filter Set Topology

/-- 22. Strict differentiability in product of two variables, in the first variable. -/
lemma HasStrictFDerivAt.fst_apply
    {f : E × F → G} {f' : E →L[𝕜] G} {x : E} {y : F}
    (h : HasStrictFDerivAt (fun p : E × F => f p)
          (f'.comp (ContinuousLinearMap.fst 𝕜 E F)) (x, y)) :
    HasStrictFDerivAt (fun x' : E => f (x', y)) f' x := by
  -- Inner map: x' ↦ (x', 0) has derivative `inl`.
  have hinner0 :
      HasStrictFDerivAt (fun x' : E => (x', (0 : F)))
        (ContinuousLinearMap.inl 𝕜 E F) x := by
    -- Strict differentiability of the linear map `inl`.
    simpa using (ContinuousLinearMap.inl 𝕜 E F).hasStrictFDerivAt

  -- Adding a constant in the codomain: x' ↦ (x', y) = (0, y) + (x', 0).
  have hinner :
      HasStrictFDerivAt (fun x' : E => (x', y))
        (ContinuousLinearMap.inl 𝕜 E F) x := by
    -- use `const_add` and simplify the resulting function
    simpa using hinner0.const_add (0, y)

  -- Chain rule: compose outer `f` with inner `(x', y)`.
  have hcomp :=
    h.comp x hinner
  -- `hcomp` :
  --   HasStrictFDerivAt
  --     (fun x' : E => (fun p : E × F => f p) (x', y))
  --     ((f'.comp (ContinuousLinearMap.fst 𝕜 E F)).comp
  --        (ContinuousLinearMap.inl 𝕜 E F)) x

  -- Simplify the linear part: (fst ∘ inl) = id.
  have hfst_inl :
      (ContinuousLinearMap.fst 𝕜 E F).comp (ContinuousLinearMap.inl 𝕜 E F)
        = (ContinuousLinearMap.id 𝕜 E) := by
    ext x
    rfl

  -- Deduce that the composed derivative simplifies to `f'`.
  have hderiv :
      (f'.comp (ContinuousLinearMap.fst 𝕜 E F)).comp
          (ContinuousLinearMap.inl 𝕜 E F)
        = f' := by
    -- ((f' ∘ fst) ∘ inl) = f' ∘ (fst ∘ inl) = f' ∘ id = f'
    simpa [ContinuousLinearMap.comp_assoc, hfst_inl]

  -- Simplify both the function and the derivative in `hcomp`.
  simpa [Function.comp, hderiv] using hcomp