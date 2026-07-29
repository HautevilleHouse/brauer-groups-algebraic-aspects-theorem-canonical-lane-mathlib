import canonicalLaneMathlib.AdmissibleClass

/-!
# Galois Descent Package
-/

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure GaloisDescentPackage (G : BrauerAdmittedObject) where
  galoisCohomologyGroup : Type u
  centralSimpleAlgebraUpToBrauer : Type v
  mapFromBrauerToCohomology : Prop
  injectivityCondition : Prop
  surjectivityCondition : Prop

structure GaloisDescentEvidence
    (G : BrauerAdmittedObject) (D : GaloisDescentPackage G) where
  mapFromBrauerToCohomologyClosed : D.mapFromBrauerToCohomology
  injectivityConditionClosed : D.injectivityCondition
  surjectivityConditionClosed : D.surjectivityCondition

def GaloisDescentClosed (G : BrauerAdmittedObject)
    (D : GaloisDescentPackage G) : Prop :=
  D.mapFromBrauerToCohomology ∧ D.injectivityCondition ∧ D.surjectivityCondition

theorem galois_descent_closed_from_evidence
    (G : BrauerAdmittedObject) (D : GaloisDescentPackage G)
    (E : GaloisDescentEvidence G D) : GaloisDescentClosed G D := by
  exact And.intro E.mapFromBrauerToCohomologyClosed
    (And.intro E.injectivityConditionClosed E.surjectivityConditionClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse