class VersionSerializer < ActiveModel::Serializer
  attributes :id, :version, :created_at, :updated_at
  has_one :project, :embed => :ids
end
