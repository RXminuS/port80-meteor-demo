Router.map ->
  @route 'questions',
    template: 'questions',
    path: '/'
    data: ->
      questions: Questions.find()

  @route 'notFound',
    path: '*'
    where: 'server'
    action: ->
      @response.statusCode = 404
      @response.end Handlebars.templates['404']()
