class VASTCreative
    constructor: ->
        @trackingEvents = {}

class VASTCreativeLinear extends VASTCreative
    constructor: ->
        super
        @type = "linear"
        @duration = 0
        @skipDelay = null
        @mediaFiles = []
        @videoClickThroughURLTemplate = null
        @videoClickTrackingURLTemplates = []

class VASTCreativeNonLinear extends VASTCreative
    constructor: ->
        super
        @type = "non-linear"
        @variations = []

class VASTCreativeCompanion extends VASTCreative
    constructor: ->
        @type = "companion"
        @variations = []
        @videoClickTrackingURLTemplates = []

module.exports =
    VASTCreativeLinear: VASTCreativeLinear
    VASTCreativeNonLinear: VASTCreativeNonLinear
    VASTCreativeCompanion: VASTCreativeCompanion
