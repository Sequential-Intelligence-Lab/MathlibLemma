import Mathlib

noncomputable def Kernel.deterministicComp {α β γ : Type*}
    [MeasurableSpace α] [MeasurableSpace β] [MeasurableSpace γ]
    (f : α → β) (g : β → γ)
    (hf : Measurable f) (hg : Measurable g) :
    ProbabilityTheory.Kernel α γ :=
  ProbabilityTheory.Kernel.deterministic (g ∘ f) (hg.comp hf)

lemma Kernel.piecewise_symm {α β : Type*}
    [MeasurableSpace α] [MeasurableSpace β]
    (s : Set α) (hs : MeasurableSet s)
    [DecidablePred (fun x => x ∈ s)]
    (κ η : ProbabilityTheory.Kernel α β) :
    ProbabilityTheory.Kernel.piecewise hs κ η =
      ProbabilityTheory.Kernel.piecewise hs.compl η κ := by
  -- extensionality on the source point `a : α`
  ext a
  -- unfold the pointwise definition of `Kernel.piecewise`
  unfold ProbabilityTheory.Kernel.piecewise
  -- the underlying definition is on functions, so `rfl` exposes the `ite`
  -- structure depending on `a ∈ s` or not
  -- We now reason by cases on membership in `s`
  by_cases h : a ∈ s
  · -- Case `a ∈ s`
    have hcompl : a ∉ sᶜ := by
      -- `a ∈ sᶜ` is definitionally `a ∉ s`
      simpa [Set.mem_compl] using h
    -- Simplify both sides using `if_pos` / `if_neg`
    simp [h, hcompl]
  · -- Case `a ∉ s`
    have hcompl : a ∈ sᶜ := by
      -- `a ∈ sᶜ` ↔ `a ∉ s`
      simpa [Set.mem_compl] using h
    simp [h, hcompl]