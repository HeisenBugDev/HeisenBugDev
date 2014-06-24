# For more information see: http://emberjs.com/guides/routing/
HeisenBugDev.Router.reopen
  location: 'history'

HeisenBugDev.Router.map ()->
  @route "home", path: '/'
  @route 'missing', path: '*:'

HeisenBugDev.MissingRoute = Ember.Route.extend
  redirect: ->
    @transitionTo 'missing'
