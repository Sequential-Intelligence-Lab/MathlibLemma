import Mathlib

open MeasureTheory

-- 25. Stopped value independent of choice of `untopA` on {τ = ⊤}.
lemma stoppedValue_ae_eq_on_ne_top
  {Ω ι β : Type*} {m : MeasurableSpace Ω} {μ : MeasureTheory.Measure Ω}
  [Nonempty ι]
  (u : ι → Ω → β) (τ : Ω → WithTop ι)
  (h : ∀ᵐ ω ∂μ, τ ω ≠ ⊤) :
  (fun ω => u ((τ ω).untop (by
      -- dummy proof, replaced by `sorry` below
      sorry)) ω)
    =ᵐ[μ]
  (fun ω => u ((τ ω).untopD (Classical.arbitrary ι)) ω) := by
  -- Local helper: on `x ≠ ⊤`, `untop` coincides with `untopD`.
  have untop_eq_untopD
    (x : WithTop ι) (d : ι) (hx : x ≠ ⊤) :
    x.untop hx = x.untopD d := by
    cases x using WithTop.recTopCoe with
    | top =>
        exact (hx rfl).elim
    | coe a =>
        -- In the finite case, both are just `a`.
        simp [WithTop.untop, WithTop.untopD]

  -- Now use the a.e. hypothesis to get pointwise equality a.e.
  refine h.mono ?_
  intro ω hτω
  -- Relate `untop` with our specific proof to `untopD`.
  have ht :
      (τ ω).untop hτω
        = (τ ω).untopD (Classical.arbitrary ι) :=
    untop_eq_untopD (x := τ ω) (d := Classical.arbitrary ι) hτω
  -- Conclude equality of the values of `u` at this ω.
  simpa [ht]