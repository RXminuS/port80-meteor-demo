@Questions = new Meteor.Collection "questions",
    schema: new SimpleSchema
        question:
            type: String,
            label: "Question"
            min: 1
            max: 200