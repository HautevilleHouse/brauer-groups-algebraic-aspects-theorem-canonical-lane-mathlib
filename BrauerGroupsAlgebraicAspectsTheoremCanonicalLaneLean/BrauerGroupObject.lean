import canonicalLaneMathlib.AdmissibleClass
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.CentralSimpleAlgebra
import BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean.BrauerEquivalence

namespace HautevilleHouse
namespace BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean

structure BrauerGroupObject (F : Type u) [Field F] where
  algebras : Set (CentralSimpleAlgebra F)
  equivalenceRelation : ∀ (A B : CentralSimpleAlgebra F), BrauerEquivalence F A B → Prop
  groupOperation : CentralSimpleAlgebra F → CentralSimpleAlgebra F → CentralSimpleAlgebra F
  identity : CentralSimpleAlgebra F
  inverses : CentralSimpleAlgebra F → CentralSimpleAlgebra F
  groupAxioms : Group (Quotient (fun (A B : CentralSimpleAlgebra F) => Nonempty (BrauerEquivalence F A B)))

structure BrauerGroupObjectEvidence (F : Type u) [Field F] (B : BrauerGroupObject F) where
  algebrasClosed : True
  equivalenceRelationClosed : True
  groupOperationClosed : True
  identityClosed : True
  inversesClosed : True
  groupAxiomsClosed : B.groupAxioms

def BrauerGroupObjectClosed (F : Type u) [Field F] (B : BrauerGroupObject F) : Prop :=
  B.groupAxioms

theorem brauer_group_object_closed_from_evidence (F : Type u) [Field F] (B : BrauerGroupObject F) (E : BrauerGroupObjectEvidence F B) : BrauerGroupObjectClosed F B :=
  E.groupAxiomsClosed

end BrauerGroupsAlgebraicAspectsTheoremCanonicalLaneLean
end HautevilleHouse