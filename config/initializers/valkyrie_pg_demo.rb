module ValkyriePgDemo
  def self.pg_persister
    Valkyrie::MetadataAdapter.find(:postgres).persister
  end

  def self.pg_query_service
    Valkyrie::MetadataAdapter.find(:postgres).query_service
  end
end
