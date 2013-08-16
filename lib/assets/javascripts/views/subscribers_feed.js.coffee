Marbles.Views.SubscribersFeed = class SubscribersFeedView extends Marbles.Views.PostsFeed
  @template_name: 'relationships_feed'
  @partial_names: ['relationship']
  @view_name: 'subscribers_feed'

  initialize: (options = {}) =>
    options.types = TentStatus.config.subscriber_feed_types
    options.entity = options.parent_view.entity
    options.headers = {
      'Cache-Control': 'proxy'
    }
    options.feed_queries = [
      { types: options.types, profiles: 'mentions', entities: options.entity }
    ]

    super(options)

  getEntity: =>
    @parentView()?.entity

  shouldAddPostToFeed: (post) =>
    true

  context: (relationships = @postsCollection().models()) =>
    relationships: relationships

