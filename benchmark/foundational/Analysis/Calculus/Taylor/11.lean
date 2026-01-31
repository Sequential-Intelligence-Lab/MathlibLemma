import Mathlib

-- Add minimal structure so `taylorWithin` and scalar multiplication make sense.
variable {E : Type _} [NormedAddCommGroup E] [NormedSpace ℝ E]

-- Provide a stub for `PolynomialModule.mapRange` so the name exists and has a
-- reasonable type. Adjust as needed to match the actual `taylorWithin` type.
namespace PolynomialModule

def mapRange {ι : Type _} {E : Type _} (f : E → E) (p : ι → E) : ι → E :=
  fun n => f (p n)

end PolynomialModule

open PolynomialModule

theorem taylorWithin_smul
    (c : ℝ) (f : ℝ → E) (n : ℕ) (s : Set ℝ) (x₀ : ℝ) :
    taylorWithin (fun x => c • f x) n s x₀ =
      PolynomialModule.mapRange (fun e : E => c • e) (taylorWithin f n s x₀) := by
  sorry