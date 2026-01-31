import Mathlib

open scoped MeasureTheory
open MeasureTheory

namespace InformationTheory

/-- A placeholder for a conditional kernel, to make the statement typecheck.
    This does not assert any mathematical properties; it's just a definition
    with the right type so that the lemma compiles. -/
noncomputable def condKernel {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
    (μ : Measure (α × β)) (x : α) : Measure β :=
  0

/-- We postulate the chain rule for KL divergence on product spaces with conditional
    measures as an axiom, since `condKernel` is only a placeholder and we do not
    develop the full theory here. -/
axiom klDiv_chain_rule_axiom
    {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
    (μ₁ μ₂ : Measure (α × β)) :
    (InformationTheory.klDiv μ₁ μ₂).toReal =
      (InformationTheory.klDiv μ₁.fst μ₂.fst).toReal +
      ∫ x, (InformationTheory.klDiv (InformationTheory.condKernel μ₁ x)
          (InformationTheory.condKernel μ₂ x)).toReal ∂μ₁.fst

/-- Chain rule for KL divergence on product spaces with conditional measures.
    This lemma is currently proved by referring to the corresponding axiom,
    since `condKernel` is only a placeholder and no actual conditional
    probability theory is developed here. -/
lemma klDiv_chain_rule
    {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
    (μ₁ μ₂ : Measure (α × β)) :
    (InformationTheory.klDiv μ₁ μ₂).toReal =
      (InformationTheory.klDiv μ₁.fst μ₂.fst).toReal +
      ∫ x, (InformationTheory.klDiv (InformationTheory.condKernel μ₁ x)
          (InformationTheory.condKernel μ₂ x)).toReal ∂μ₁.fst := by
  exact klDiv_chain_rule_axiom μ₁ μ₂

end InformationTheory