HeisenBugDev.Project = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  created_at: DS.attr 'string'
  updated_at: DS.attr 'string'
  code_repo: DS.attr 'string'
  subtitle: DS.attr 'string'
  icon: DS.attr 'string'
  wiki: DS.belongsTo 'wiki', async: true
  builds: DS.hasMany 'builds', async: true
  versions: DS.hasMany 'versions', async: true
  downloads: DS.attr 'number'
  slug: DS.attr 'string'
  owner_sentence: DS.attr 'string'
