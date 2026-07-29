import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure AzumayaAlgebra (R : Type u) [CommRing R] where
  carrier : Type v
  algebraStructure : Algebra R carrier
  finiteProjective : Module.Finite R carrier ∧ Module.Projective R carrier
  centerEqualsR : Subalgebra.center (Algebra R) carrier = ⊥
  separable : IsSeparable R carrier

structure AzumayaAlgebraEvidence (R : Type u) [CommRing R] (A : AzumayaAlgebra R) where
  finiteProjectiveClosed : A.finiteProjective.1 ∧ A.finiteProjective.2
  centerEqualsRClosed : A.centerEqualsR
  separableClosed : A.separable

def AzumayaAlgebraClosed (R : Type u) [CommRing R] (A : AzumayaAlgebra R) : Prop :=
  (A.finiteProjective.1 ∧ A.finiteProjective.2) ∧ A.centerEqualsR ∧ A.separable

theorem azumaya_algebra_closed_from_evidence (R : Type u) [CommRing R] (A : AzumayaAlgebra R) (E : AzumayaAlgebraEvidence R A) : AzumayaAlgebraClosed R A :=
  by
    exact And.intro (And.intro E.finiteProjectiveClosed.1 E.finiteProjectiveClosed.2) (And.intro E.centerEqualsRClosed E.separableClosed)

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse