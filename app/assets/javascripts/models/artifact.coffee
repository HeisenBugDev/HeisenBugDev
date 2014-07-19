HeisenBugDev.Artifact = DS.Model.extend
  name: DS.attr 'string'
  artifact: DS.attr 'string'
  created_at: DS.attr 'date'
  updated_at: DS.attr 'date'
  downloads: DS.attr 'number'
  file_size: DS.attr 'string'
  build: DS.belongs_to 'build'
