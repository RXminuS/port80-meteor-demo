Meteor.startup ->
  Questions.allow
    insert: (userId, order)->
        return true
    update: (userId, order)->
        return true
    remove: (userId, order)->
        return true