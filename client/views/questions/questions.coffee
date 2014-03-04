Template.question.randomColor = ->
    Math.floor(Math.random()*16777215).toString(16)

Template.newQuestionForm.questionsCollection = ->
    return Questions