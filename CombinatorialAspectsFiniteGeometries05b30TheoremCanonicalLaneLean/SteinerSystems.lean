import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure SteinerSystemPackage where
  pointSet : Type u
  blocks : Set (Set pointSet)
  parameters : ℕ × ℕ × ℕ  -- t, k, v
  steinerProperty : Prop
  blockSizeUniform : Prop

structure SteinerSystemEvidence (S : SteinerSystemPackage) where
  steinerPropertyClosed : S.steinerProperty
  blockSizeUniformClosed : S.blockSizeUniform

def SteinerSystemClosed (S : SteinerSystemPackage) : Prop :=
  S.steinerProperty ∧ S.blockSizeUniform

theorem steiner_system_closed_from_evidence (S : SteinerSystemPackage) (E : SteinerSystemEvidence S) :
    SteinerSystemClosed S := by
  exact And.intro E.steinerPropertyClosed E.blockSizeUniformClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse
