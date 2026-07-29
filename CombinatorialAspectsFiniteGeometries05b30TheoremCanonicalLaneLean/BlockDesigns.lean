import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BlockDesignPackage where
  pointSet : Type u
  blockCollection : Set (Set pointSet)
  regularityParameters : Prop
  blockSize : ℕ
  replicationNumber : ℕ
  incidenceMatrixConsistent : Prop

structure BlockDesignEvidence (D : BlockDesignPackage) where
  regularityParametersClosed : D.regularityParameters
  incidenceMatrixConsistentClosed : D.incidenceMatrixConsistent

def BlockDesignClosed (D : BlockDesignPackage) : Prop :=
  D.regularityParameters ∧ D.incidenceMatrixConsistent

theorem block_design_closed_from_evidence (D : BlockDesignPackage) (E : BlockDesignEvidence D) :
    BlockDesignClosed D := by
  exact And.intro E.regularityParametersClosed E.incidenceMatrixConsistentClosed

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse
