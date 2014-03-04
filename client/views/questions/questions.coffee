Template.question.randomColor = ->
    Math.floor(Math.random()*16777215).toString(16)

Template.question.hashedColor = (str) ->
    hash = 0
    color = ''

    for i in [0..str.length-1]
        hash = str.charCodeAt(i) + ((hash << 5) - hash)

    for i in [0..2]
        color += ("00" + ((hash >> i * 8) & 0xFF).toString(16)).slice(-2)

    return color

Template.questions.editing = ->
    return !Session.equals('selected-question', null)

Handlebars.registerHelper 'selectedQuestion', ->
    return Questions.findOne(Session.get('selected-question'))

Handlebars.registerHelper 'questionsCollection', ->
    return Questions

Template.question.events
    'click': () ->
        #Check if we are selecting the same one in which case we deselect
        if Session.equals('selected-question', this._id)
            Session.set('selected-question', null)
        else
            Session.set('selected-question', this._id)

Template.question.selected = ->
    if Session.equals('selected-question', this._id)
        return 'selected'
    else
        return ''
