import canonicalLaneMathlib.AdmissibleClass
import Mathlib.NumberTheory.LocalFields

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure HasseInvariantPackage (k : Type u) [NumberField k] where
  place : Type v
  localInvariant : place → ℚ
  sumZero : (∑ p : place, localInvariant p) = 0
  compatibility : Prop

structure HasseInvariantEvidence (k : Type u) [NumberField k] (H : HasseInvariantPackage k) where
  place : H.place
  localInvariantClosed : H.localInvariant = 0
  sumZeroClosed : H.sumZero = 0
  compatibilityClosed : H.compatibility

def HasseInvariantClosed (k : Type u) [NumberField k] (H : HasseInvariantPackage k) : Prop :=
  H.sumZero ∧ H.compatibility

theorem hasseInvariant_closed_from_evidence (k : Type u) [NumberField k] (H : HasseInvariantPackage k) (E : HasseInvariantEvidence k H) :
  HasseInvariantClosed k H :=
by
  exact And.intro (by
    calc
      (∑ p : E.place, H.localInvariant p) = 0 := H.sumZero
      _ = 0 := by
        rfl) E.compatibilityClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse