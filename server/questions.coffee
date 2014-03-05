Meteor.startup ->
  Questions.allow
    insert: (userId, q)->
        if userId then return true else return false
    update: (userId, q)->
        if userId then return true else return false
    remove: (userId, q)->
        if userId then return true else return false

Meteor.publish 'questions', () ->
    if this.userId
        Questions.find()
    else
        this.stop()
        return