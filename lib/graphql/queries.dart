import "./util.dart";
var activityQuery = removeFragmentDups(r"""query Activity($id: Int, $page: Int) {
  activity: Activity(id: $id) {
    ... on TextActivity {
      ...TextActivity
    }
    ... on ListActivity {
      ...ListActivity
    }
    ... on MessageActivity {
      ...MessageActivity
    }
  }
  replies: Page(page: $page) {
    pageInfo {
      ...PageInfo
    }
    activityReplies(activityId: $id) {
      id
      userId
      text
      createdAt
      activityId
      isLiked
      likeCount
      user {
        ...UserFragment
      }
    }
  }
}


""""$textActivity""""


""""$listActivity""""


""""$messageActivity""""


""""$pageInfo""""


""""$userFragment""""""");
var saveActivityReplyQuery = removeFragmentDups(r"""mutation SaveActivityReply($id: Int, $activityId: Int, $text: String) {
  SaveActivityReply(id: $id, activityId: $activityId, text: $text) {
    id
    activityId
    text
    likeCount
    createdAt
    user {
      id
      name
      avatar {
        large
      }
    }
  }
}""");
var saveMessageActivityQuery = removeFragmentDups(r"""mutation SaveMessageActivity($id: Int, $recipientId: Int, $message: String, $private: Boolean) {
  SaveMessageActivity(id: $id, recipientId: $recipientId, message: $message, private: $private) {
    ...MessageActivity
  }
}


""""$messageActivity""""""");
var toggleActivitySubscriptionQuery = removeFragmentDups(r"""mutation ToggleActivitySubscription($id: Int, $subscribe: Boolean) {
  ToggleActivitySubscription(activityId: $id, subscribe: $subscribe) {
    ... on ListActivity {
      id
      isSubscribed
    }
    ... on TextActivity {
      id
      isSubscribed
    }
    ... on MessageActivity {
      id
      isSubscribed
    }
  }
}""");
var deleteActivityReplyQuery = removeFragmentDups(r"""mutation DeleteActivityReply($id: Int) {
  DeleteActivityReply(id: $id) {
    deleted
  }
}""");
var deleteActivityQuery = removeFragmentDups(r"""mutation DeleteActivity($id: Int) {
  DeleteActivity(id: $id) {
    deleted
  }
}""");
var calendarScheduleQuery = removeFragmentDups(r"""query CalendarSchedule($start: Int, $end: Int) {
  Page(page: 1, perPage: 50) {
    pageInfo {
      ...PageInfo
    }
    airingSchedules(airingAt_greater: $start, airingAt_lesser: $end, sort: TIME) {
      id
      episode
      airingAt
      media {
        ...MediaFragment
      }
    }
  }
}


""""$pageInfo""""


""""$mediaFragment""""""");
var releasesListQuery = removeFragmentDups(r"""query ReleasesList($page: Int) {
  Page(page: $page) {
    pageInfo {
      ...PageInfo
    }
    media(onList: true, status_in: [RELEASING, NOT_YET_RELEASED], sort: START_DATE_DESC) {
      ...ReleasingMedia
    }
  }
}


""""$pageInfo""""


""""$releasingMedia""""""");
var characterQuery = removeFragmentDups(r"""query Character($id: Int, $page: Int, $onList: Boolean) {
  Character(id: $id) {
    ...CharacterFragment
    description
    gender
    age
    bloodType
    isFavourite
    siteUrl
    isFavouriteBlocked
    favourites
    dateOfBirth {
      ...FuzzyDate
    }
    media(sort: [POPULARITY_DESC], page: $page, onList: $onList) {
      pageInfo {
        ...PageInfo
      }
      edges {
        voiceActorRoles(sort: LANGUAGE) {
          roleNotes
          dubGroup
          voiceActor {
            ...StaffFragment
            languageV2
          }
        }
        node {
          ...MediaFragment
        }
      }
    }
  }
}


""""$characterFragment""""


""""$fuzzyDate""""


""""$pageInfo""""


""""$staffFragment""""


""""$mediaFragment""""""");
var forumsQuery = removeFragmentDups(r"""query Forums($page: Int, $sort: [ThreadSort], $id: Int, $subscribed: Boolean, $search: String) {
  Page(page: $page) {
    pageInfo {
      ...PageInfo
    }
    threads(sort: $sort, categoryId: $id, subscribed: $subscribed, search: $search) {
      ...ThreadFragment
    }
  }
}


""""$pageInfo""""


""""$threadFragment""""""");
var forumOverviewQuery = removeFragmentDups(r"""query ForumOverview {
  recent: Page(perPage: 14) {
    threads(sort: [IS_STICKY, REPLIED_AT_DESC]) {
      ...ThreadFragment
    }
  }
  new: Page(perPage: 5) {
    threads(sort: [ID_DESC]) {
      ...ThreadFragment
    }
  }
  release: Page(perPage: 4) {
    threads(categoryId: 5, sort: [REPLIED_AT_DESC]) {
      ...ThreadFragment
    }
  }
}


""""$threadFragment""""


""""$threadFragment""""


""""$threadFragment""""""");
var commentQuery = removeFragmentDups(r"""query Comment($id: Int) {
  ThreadComment(id: $id) {
    id
    threadId
    comment
    isLiked
    likeCount
    createdAt
    user {
      ...UserFragment
    }
    childComments
    isLocked
  }
}


""""$userFragment""""""");
var threadQuery = removeFragmentDups(r"""query Thread($id: Int, $page: Int) {
  thread: Thread(id: $id) {
    ...ThreadFragment
    id
    title
    body
    userId
    replyCount
    viewCount
    isLocked
    isSticky
    isSubscribed
    isLiked
    likeCount
    repliedAt
    createdAt
    siteUrl
  }
  comments: Page(page: $page, perPage: 30) {
    pageInfo {
      ...PageInfo
      total
      lastPage
    }
    threadComments(threadId: $id) {
      id
      threadId
      comment
      isLiked
      likeCount
      createdAt
      user {
        id
        name
        avatar {
          large
        }
      }
      childComments
      isLocked
    }
  }
}


""""$threadFragment""""


""""$pageInfo""""""");
var saveCommentQuery = removeFragmentDups(r"""mutation SaveComment(
  $id: Int
  $threadId: Int
  $parentCommentId: Int
  $comment: String
) {
  SaveThreadComment(
    id: $id
    threadId: $threadId
    parentCommentId: $parentCommentId
    comment: $comment
  ) {
    id
    threadId
    comment
    isLiked
    likeCount
    createdAt
    user {
      id
      name
      donatorTier
      donatorBadge
      moderatorRoles
      avatar {
        large
      }
    }
    childComments
    isLocked
  }
}""");
var deleteCommentQuery = removeFragmentDups(r"""mutation DeleteComment($id: Int) {
  DeleteThreadComment(id: $id) {
    deleted
  }
}""");
var toggleThreadSubscriptionQuery = removeFragmentDups(r"""mutation ToggleThreadSubscription($id: Int, $subscribe: Boolean) {
  ToggleThreadSubscription(threadId: $id, subscribe: $subscribe) {
    id
    isSubscribed
  }
}""");
var homeActivitiesQuery = removeFragmentDups(r"""query HomeActivities($isFollowing: Boolean = true, $hasReplies: Boolean = false, $activityType: ActivityType, $page: Int) {
  Page(page: $page, perPage: 25) {
    pageInfo {
      ...PageInfo
    }
    activities(
      isFollowing: $isFollowing
      type: $activityType
      hasRepliesOrTypeText: $hasReplies
      type_in: [TEXT, ANIME_LIST, MANGA_LIST]
      sort: ID_DESC
    ) {
      ... on TextActivity {
        ...TextActivity
      }
      ... on ListActivity {
        ...ListActivity
      }
    }
  }
}


""""$pageInfo""""


""""$textActivity""""


""""$listActivity""""""");
var toggleLikeQuery = removeFragmentDups(r"""mutation ToggleLike($type: LikeableType, $id: Int) {
  ToggleLikeV2(type: $type, id: $id) {
    ... on ListActivity {
      id
      likeCount
      isLiked
    }
    ... on MessageActivity {
      id
      likeCount
      isLiked
    }
    ... on TextActivity {
      id
      likeCount
      isLiked
    }
    ... on ActivityReply {
      id
      likeCount
      isLiked
    }
    ... on Thread {
      id
      likeCount
      isLiked
    }
    ... on ThreadComment {
      id
      likeCount
      isLiked
    }
  }
}""");
var saveTextActivityQuery = removeFragmentDups(r"""mutation SaveTextActivity($id: Int, $text: String) {
  SaveTextActivity(id: $id, text: $text) {
    id
    userId
    type
    replyCount
    text
    isLocked
    isSubscribed
    isLiked
    likeCount
    createdAt
    user {
      ...UserFragment
    }
  }
}


""""$userFragment""""""");
var exploreQuery = removeFragmentDups(r"""query Explore($season: MediaSeason, $seasonYear: Int, $nextSeason: MediaSeason, $nextYear: Int) {
  trending: Page(page: 1, perPage: 10) {
    media(sort: TRENDING_DESC, type: ANIME, isAdult: false) {
      ...MediaFragment
    }
  }
  season: Page(page: 1, perPage: 13) {
    media(season: $season, seasonYear: $seasonYear, sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
      ...MediaFragment
    }
  }
  nextSeason: Page(page: 1, perPage: 14) {
    media(season: $nextSeason, seasonYear: $nextYear, sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
      ...MediaFragment
    }
  }
  popular: Page(page: 1, perPage: 11) {
    media(sort: POPULARITY_DESC, type: ANIME, isAdult: false) {
      ...MediaFragment
    }
  }
  recent: Page(page: 1, perPage: 12) {
    media(sort: ID_DESC, isAdult: false) {
      ...MediaFragment
    }
  }
}


""""$mediaFragment""""


""""$mediaFragment""""


""""$mediaFragment""""


""""$mediaFragment""""


""""$mediaFragment""""""");
var homeOverviewQuery = removeFragmentDups(r"""query HomeOverview($page: Int = 1, $userId: Int!, $type: MediaType) {
  releasing: Page(page: $page) {
    media(
      onList: true
      status_in: [RELEASING, NOT_YET_RELEASED]
      sort: [START_DATE_DESC, STATUS]
    ) {
      ...ReleasingMedia
    }
  }
  list: Page {
    mediaList(
      userId: $userId
      status_in: [CURRENT, REPEATING]
      sort: UPDATED_TIME_DESC
      type: $type
    ) {
      ...MediaListEntry
    }
  }
  forums: Page(perPage: 5) {
    threads(sort: REPLIED_AT_DESC) {
      ...ThreadFragment
    }
  }
  reviews: Page(perPage: 6) {
    reviews(sort: ID_DESC) {
      ...ReviewFragment
    }
  }
}


""""$releasingMedia""""


""""$mediaListEntry""""


""""$threadFragment""""


""""$reviewFragment""""""");
var mediaListQuery = removeFragmentDups(r"""query MediaList($userName: String, $type: MediaType, $sort: [MediaListSort]) {
  MediaListCollection(userName: $userName, type: $type, sort: $sort) {
    lists {
      ...ListGroup
    }
    user {
      id
      mediaListOptions {
        scoreFormat
        rowOrder
        animeList {
          ...MediaListOptions
        }
        mangaList {
          ...MediaListOptions
        }
      }
    }
  }
}


""""$listGroup""""


""""$mediaListOptions""""


""""$mediaListOptions""""""");
var mediaCharactersQuery = removeFragmentDups(r"""query MediaCharacters($mediaId: Int, $page: Int) {
  Media(id: $mediaId) {
    id
    countryOfOrigin
    characters(page: $page, sort: [ROLE, RELEVANCE, ID]) {
      pageInfo {
        ...PageInfo
      }
      edges {
        name
        role
        node {
          ...CharacterFragment
          name {
            first
            full
          }
        }
        voiceActorRoles(sort: [RELEVANCE, ID]) {
          roleNotes
          dubGroup
          voiceActor {
            ...StaffFragment
            languageV2
          }
        }
      }
    }
  }
}


""""$pageInfo""""


""""$characterFragment""""


""""$staffFragment""""""");
var mediaQuery = removeFragmentDups(r"""query Media($id: Int) {
  Media(id: $id) {
    ...MediaFragment
    bannerImage
    favourites
    isFavourite
    isFavouriteBlocked
    averageScore
    duration
    status(version: 2)
    season
    seasonYear
    source
    hashtag
    volumes
    episodes
    chapters
    title {
      userPreferred
      english
      native
      romaji
    }
    coverImage {
      extraLarge
    }
    studios {
      edges {
        isMain
        node {
          id
          name
        }
      }
    }
    startDate {
      ...FuzzyDate
    }
    endDate {
      ...FuzzyDate
    }
    tags {
      name
      description
      rank
      isMediaSpoiler
    }
    relations {
      edges {
        relationType(version: 2)
        node {
          ...MediaFragment
        }
      }
    }
    externalLinks {
      site
      url
      color
      icon
      isDisabled
      language
    }
    trailer {
      site
      id
      thumbnail
    }
    characters {
      nodes {
        id
      }
    }
    staff {
      nodes {
        id
      }
    }
    recommendations {
      nodes {
        id
      }
    }
    reviews {
      nodes {
        id
      }
    }
    mediaListEntry {
      status
    }
    nextAiringEpisode {
      airingAt
      timeUntilAiring
      episode
    }
  }
}


""""$mediaFragment""""


""""$fuzzyDate""""


""""$fuzzyDate""""


""""$mediaFragment""""""");
var toggleFavoriteQuery = removeFragmentDups(r"""mutation ToggleFavorite(
  $animeId: Int
  $mangaId: Int
  $characterId: Int
  $staffId: Int
  $studioId: Int
) {
  ToggleFavourite(
    animeId: $animeId
    mangaId: $mangaId
    characterId: $characterId
    staffId: $staffId
    studioId: $studioId
  ) {
    anime {
      pageInfo {
        total
      }
    }
    manga {
      pageInfo {
        total
      }
    }
    characters {
      pageInfo {
        total
      }
    }
    staff {
      pageInfo {
        total
      }
    }
    studios {
      pageInfo {
        total
      }
    }
  }
}""");
var mediaReviewsQuery = removeFragmentDups(r"""query MediaReviews($mediaId: Int, $page: Int) {
  Media(id: $mediaId) {
    id
    reviews(page: $page, sort: [RATING_DESC, ID]) {
      pageInfo {
        ...PageInfo
      }
      nodes {
        ...ReviewFragment
        score
        userRating
      }
    }
  }
}


""""$pageInfo""""


""""$reviewFragment""""""");
var mediaSimilarQuery = removeFragmentDups(r"""query MediaSimilar($mediaId: Int, $page: Int) {
  Media(id: $mediaId) {
    id
    recommendations(page: $page, sort: [RATING_DESC, ID]) {
      pageInfo {
        ...PageInfo
      }
      nodes {
        mediaRecommendation {
          ...MediaFragment
        }
      }
    }
  }
}


""""$pageInfo""""


""""$mediaFragment""""""");
var mediaStaffQuery = removeFragmentDups(r"""query MediaStaff($mediaId: Int, $page: Int) {
  Media(id: $mediaId) {
    id
    staff(page: $page, sort: [RELEVANCE, ID]) {
      pageInfo {
        ...PageInfo
      }
      edges {
        role
        node {
          ...StaffFragment
        }
      }
    }
  }
}


""""$pageInfo""""


""""$staffFragment""""""");
var mediaThreadsQuery = removeFragmentDups(r"""query MediaThreads($mediaId: Int, $page: Int, $perPage: Int) {
  Page(page: $page, perPage: $perPage) {
    pageInfo {
      ...PageInfo
    }
    threads(mediaCategoryId: $mediaId, sort: ID_DESC) {
      ...ThreadFragment
    }
  }
}


""""$pageInfo""""


""""$threadFragment""""""");
var mediaEntryQuery = removeFragmentDups(r"""query MediaEntry($mediaId: Int, $userId: Int) {
  MediaList(mediaId: $mediaId, userId: $userId) {
    ...MediaListEntry
    user {
      id
      mediaListOptions {
        scoreFormat
      }
    }
  }
}


""""$mediaListEntry""""""");
var saveMediaListEntryQuery = removeFragmentDups(r"""mutation SaveMediaListEntry(
  $id: Int
  $mediaId: Int
  $status: MediaListStatus
  $score: Float
  $scoreRaw: Int
  $progress: Int
  $progressVolumes: Int
  $repeat: Int
  $priority: Int
  $private: Boolean
  $notes: String
  $hiddenFromStatusLists: Boolean
  $customLists: [String]
  $advancedScores: [Float]
  $startedAt: FuzzyDateInput
  $completedAt: FuzzyDateInput
) {
  SaveMediaListEntry(
    id: $id
    mediaId: $mediaId
    status: $status
    score: $score
    scoreRaw: $scoreRaw
    progress: $progress
    progressVolumes: $progressVolumes
    repeat: $repeat
    priority: $priority
    private: $private
    notes: $notes
    hiddenFromStatusLists: $hiddenFromStatusLists
    customLists: $customLists
    advancedScores: $advancedScores
    startedAt: $startedAt
    completedAt: $completedAt
  ) {
    ...MediaListEntry
  }
}


""""$mediaListEntry""""""");
var deleteMediaListEntryQuery = removeFragmentDups(r"""mutation DeleteMediaListEntry($id: Int) {
  DeleteMediaListEntry(id: $id) {
    deleted
  }
}""");
var notificationsQuery = removeFragmentDups(r"""query Notifications($page: Int, $types: [NotificationType], $reset: Boolean = true) {
  Page(page: $page, perPage: 50) {
    pageInfo {
      ...PageInfo
    }
    notifications(type_in: $types, resetNotificationCount: $reset) {
      ... on AiringNotification {
        id
        type
        episode
        contexts
        media {
          ...MediaFragment
        }
        createdAt
      }
      ... on FollowingNotification {
        id
        type
        context
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityMessageNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityMentionNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityReplyNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityReplySubscribedNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityLikeNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ActivityReplyLikeNotification {
        id
        type
        context
        activityId
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ThreadCommentMentionNotification {
        id
        type
        context
        commentId
        thread {
          id
          title
        }
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ThreadCommentReplyNotification {
        id
        type
        context
        commentId
        thread {
          id
          title
        }
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ThreadCommentSubscribedNotification {
        id
        type
        context
        commentId
        thread {
          id
          title
        }
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ThreadCommentLikeNotification {
        id
        type
        context
        commentId
        thread {
          id
          title
        }
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on ThreadLikeNotification {
        id
        type
        context
        thread {
          id
          title
        }
        user {
          ...UserFragment
        }
        createdAt
      }
      ... on RelatedMediaAdditionNotification {
        id
        type
        context
        media {
          ...MediaFragment
        }
        createdAt
      }
      ... on MediaDataChangeNotification {
        id
        type
        context
        media {
          ...MediaFragment
        }
        reason
        createdAt
      }
      ... on MediaMergeNotification {
        id
        type
        context
        media {
          ...MediaFragment
        }
        deletedMediaTitles
        reason
        createdAt
      }
      ... on MediaDeletionNotification {
        id
        type
        context
        deletedMediaTitle
        reason
        createdAt
      }
    }
  }
}


""""$pageInfo""""


""""$mediaFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$userFragment""""


""""$mediaFragment""""


""""$mediaFragment""""


""""$mediaFragment""""""");
var recommendationsQuery = removeFragmentDups(r"""query Recommendations($page: Int, $perPage: Int, $sort: [RecommendationSort], $onList: Boolean) {
  Page(page: $page, perPage: $perPage) {
    pageInfo {
      ...PageInfo
    }
    recommendations(onList: $onList, sort: $sort) {
      id
      rating
      userRating
      media {
        ...MediaFragment
      }
      mediaRecommendation {
        ...MediaFragment
      }
    }
  }
}


""""$pageInfo""""


""""$mediaFragment""""


""""$mediaFragment""""""");
var saveRecommendationQuery = removeFragmentDups(r"""mutation SaveRecommendation($mediaId: Int, $mediaRecommendationId: Int, $rating: RecommendationRating) {
  SaveRecommendation(mediaId: $mediaId, mediaRecommendationId: $mediaRecommendationId, rating: $rating) {
    id
    rating
    userRating
    media {
      ...MediaFragment
    }
    mediaRecommendation {
      ...MediaFragment
    }
  }
}


""""$mediaFragment""""


""""$mediaFragment""""""");
var reviewQuery = removeFragmentDups(r"""query Review($id: Int) {
  Review(id: $id) {
    ...ReviewFragment
    body
    userRating
    score
    createdAt
  }
}


""""$reviewFragment""""""");
var rateReviewQuery = removeFragmentDups(r"""mutation RateReview($id: Int, $rating: ReviewRating) {
  RateReview(reviewId: $id, rating: $rating) {
    id
    rating
    ratingAmount
    userRating
  }
}""");
var reviewsQuery = removeFragmentDups(r"""query Reviews($page: Int, $perPage: Int = 30) {
  Page(page: $page, perPage: $perPage) {
    pageInfo {
      ...PageInfo
    }
    reviews(sort: ID_DESC) {
      ...ReviewFragment
    }
  }
}


""""$pageInfo""""


""""$reviewFragment""""""");
var genreCollectionQuery = removeFragmentDups(r"""query GenreCollection {
  genres: GenreCollection
  tags: MediaTagCollection {
    name
    description
    category
    isAdult
  }
}""");
var searchQuery = removeFragmentDups(r"""query Search(
  $page: Int
  $perPage: Int
  $type: MediaType
  $format: [MediaFormat]
  $sort: [MediaSort] = [POPULARITY_DESC, SCORE_DESC]
  $season: MediaSeason
  $seasonYear: Int
  $search: String
  $year: String
  $yearGreater: FuzzyDateInt
  $yearLesser: FuzzyDateInt
  $genres: [String]
  $with_tags: [String]
  $without_tags: [String]
  $isAdult: Boolean = false
  $onList: Boolean
  $countryOfOrigin: CountryCode
) {
  Page(page: $page, perPage: $perPage) {
    pageInfo {
      ...PageInfo
    }
    media(
      isAdult: $isAdult
      type: $type
      sort: $sort
      format_in: $format
      season: $season
      seasonYear: $seasonYear
      startDate_like: $year
      startDate_greater: $yearGreater
      startDate_lesser: $yearLesser
      search: $search
      genre_in: $genres
      tag_in: $with_tags
      tag_not_in: $without_tags
      onList: $onList
      countryOfOrigin: $countryOfOrigin
    ) {
      ...MediaFragment
    }
  }
}


""""$pageInfo""""


""""$mediaFragment""""""");
var staffQuery = removeFragmentDups(r"""query Staff($id: Int, $onList: Boolean, $characterPage: Int, $staffPage: Int) {
  Staff(id: $id) {
    ...StaffFragment
    description
    gender
    language: languageV2
    dateOfBirth {
      ...FuzzyDate
    }
    dateOfDeath {
      ...FuzzyDate
    }
    age
    yearsActive
    homeTown
    bloodType
    isFavourite
    isFavouriteBlocked
    characterMedia(page: $characterPage, onList: $onList, sort: [START_DATE_DESC]) {
      pageInfo {
        ...PageInfo
      }
      edges {
        node {
          ...MediaFragment
          startDate {
            year
          }
        }
        characters {
          ...CharacterFragment
        }
      }
    }
    staffMedia(page: $staffPage, onList: $onList, sort: [START_DATE_DESC]) {
      pageInfo {
        ...PageInfo
      }
      edges {
        node {
          ...MediaFragment
        }
        staffRole
      }
    }
  }
}


""""$staffFragment""""


""""$fuzzyDate""""


""""$fuzzyDate""""


""""$pageInfo""""


""""$mediaFragment""""


""""$characterFragment""""


""""$pageInfo""""


""""$mediaFragment""""""");
var studioQuery = removeFragmentDups(r"""query Studio($id: Int!, $page: Int, $sort: [MediaSort], $onList: Boolean) {
  Studio(id: $id) {
    ...StudioFragment
    media(page: $page, sort: $sort, onList: $onList) {
      pageInfo {
        ...PageInfo
      }
      nodes {
        ...MediaFragment
      }
    }
  }
}


""""$studioFragment""""


""""$pageInfo""""


""""$mediaFragment""""""");
var userActivitiesQuery = removeFragmentDups(r"""query UserActivities($userId: Int, $activityType: ActivityType, $page: Int) {
  Page(page: $page, perPage: 25) {
    pageInfo {
      ...PageInfo
    }
    activities(userId: $userId, type: $activityType, sort: [PINNED, ID_DESC]) {
      ... on TextActivity {
        ...TextActivity
      }
      ... on ListActivity {
        ...ListActivity
      }
      ... on MessageActivity {
        ...MessageActivity
      }
    }
  }
}


""""$pageInfo""""


""""$textActivity""""


""""$listActivity""""


""""$messageActivity""""""");
var userFavoritesQuery = removeFragmentDups(r"""query UserFavorites($name: String, $animePage: Int, $mangaPage: Int, $characterPage: Int, $staffPage: Int, $studioPage: Int) {
  User(name: $name) {
    ...UserFragment
    favourites {
      anime(page: $animePage) {
        pageInfo {
          ...PageInfo
        }
        edges {
          id
          favouriteOrder
          node {
            ...MediaFragment
          }
        }
      }
      manga(page: $mangaPage) {
        pageInfo {
          ...PageInfo
        }
        edges {
          id
          favouriteOrder
          node {
            ...MediaFragment
          }
        }
      }
      characters(page: $characterPage) {
        pageInfo {
          ...PageInfo
        }
        edges {
          id
          favouriteOrder
          node {
            ...CharacterFragment
          }
        }
      }
      staff(page: $staffPage) {
        pageInfo {
          ...PageInfo
        }
        edges {
          id
          favouriteOrder
          node {
            ...StaffFragment
          }
        }
      }
      studios(page: $studioPage) {
        pageInfo {
          ...PageInfo
        }
        edges {
          id
          favouriteOrder
          node {
            ...StudioFragment
          }
        }
      }
    }
  }
}


""""$userFragment""""


""""$pageInfo""""


""""$mediaFragment""""


""""$pageInfo""""


""""$mediaFragment""""


""""$pageInfo""""


""""$characterFragment""""


""""$pageInfo""""


""""$staffFragment""""


""""$pageInfo""""


""""$studioFragment""""""");
var userReviewsQuery = removeFragmentDups(r"""query UserReviews($userId: Int, $page: Int) {
  Page(page: $page) {
    pageInfo {
      ...PageInfo
    }
    reviews(userId: $userId, sort: ID_DESC) {
      ...ReviewFragment
    }
  }
}


""""$pageInfo""""


""""$reviewFragment""""""");
var userSocialsQuery = removeFragmentDups(r"""query UserSocials($id: Int!, $followersPage: Int, $followingPage: Int) {
  followers: Page(page: $followersPage) {
    pageInfo {
      ...PageInfo
    }
    followers(userId: $id, sort: USERNAME) {
      ...UserFragment
    }
  }
  following: Page(page: $followingPage, perPage: 25) {
    pageInfo {
      ...PageInfo
    }
    following(userId: $id, sort: USERNAME) {
      ...UserFragment
    }
  }
}


""""$pageInfo""""


""""$userFragment""""


""""$pageInfo""""


""""$userFragment""""""");
var userThreadsQuery = removeFragmentDups(r"""query UserThreads($userId: Int, $threadPage: Int, $commentsPage: Int) {
  # needed a slight change page query from "comments" or else cache wouldn't work
  thread: Page(page: $threadPage, perPage: 30) {
    pageInfo {
      ...PageInfo
    }
    threads(userId: $userId, sort: ID_DESC) {
      ...ThreadFragment
    }
  }
  comments: Page(page: $commentsPage) {
    pageInfo {
      ...PageInfo
    }
    threadComments(userId: $userId, sort: ID_DESC) {
      id
      threadId
      comment
      isLiked
      likeCount
      createdAt
      thread {
        id
        title
      }
      user {
        ...UserFragment
      }
    }
  }
}


""""$pageInfo""""


""""$threadFragment""""


""""$pageInfo""""


""""$userFragment""""""");
var userQuery = removeFragmentDups(r"""query User($name: String) {
  User(name: $name) {
    ...UserFragment
    bannerImage
    about
    mediaListOptions {
      scoreFormat
    }
    statistics {
      anime {
        count
        episodesWatched
        minutesWatched
        standardDeviation
        meanScore
        genres(limit: 10, sort: COUNT_DESC) {
          ...GenreStat
        }
      }
      manga {
        count
        chaptersRead
        volumesRead
        standardDeviation
        meanScore
        genres(limit: 10, sort: COUNT_DESC) {
          ...GenreStat
        }
      }
    }
    favourites {
      anime(perPage: 4) {
        nodes {
          ...MediaFragment
        }
      }
      manga(perPage: 4) {
        nodes {
          ...MediaFragment
        }
      }
      characters(perPage: 4) {
        nodes {
          ...CharacterFragment
        }
      }
      staff(perPage: 4) {
        nodes {
          ...StaffFragment
        }
      }
      studios(perPage: 4) {
        nodes {
          ...StudioFragment
        }
      }
    }
  }
}


""""$userFragment""""


""""$genreStat""""


""""$genreStat""""


""""$mediaFragment""""


""""$mediaFragment""""


""""$characterFragment""""


""""$staffFragment""""


""""$studioFragment""""""");
var genreStat = r"""fragment GenreStat on UserGenreStatistic {
  genre
  count
}""";
var viewerQuery = removeFragmentDups(r"""query Viewer {
  Viewer {
    ...ThisUser
  }
}


""""$thisUser""""""");
var notificationCountQuery = removeFragmentDups(r"""query NotificationCount {
  Viewer {
    unreadNotificationCount
    options {
      airingNotifications
    }
  }
}""");
var updateUserQuery = removeFragmentDups(r"""mutation UpdateUser(
  $about: String
  $titleLanguage: UserTitleLanguage
  $displayAdultContent: Boolean
  $airingNotifications: Boolean
  $scoreFormat: ScoreFormat
  $rowOrder: String
  $profileColor: String
  $donatorBadge: String
  $notificationOptions: [NotificationOptionInput]
  $timezone: String
  $activityMergeTime: Int
  $animeListOptions: MediaListOptionsInput
  $mangaListOptions: MediaListOptionsInput
  $staffNameLanguage: UserStaffNameLanguage
  $restrictMessagesToFollowing: Boolean
  $disabledListActivity: [ListActivityOptionInput]
) {
  UpdateUser(
    about: $about
    titleLanguage: $titleLanguage
    displayAdultContent: $displayAdultContent
    airingNotifications: $airingNotifications
    scoreFormat: $scoreFormat
    rowOrder: $rowOrder
    profileColor: $profileColor
    donatorBadge: $donatorBadge
    notificationOptions: $notificationOptions
    timezone: $timezone
    activityMergeTime: $activityMergeTime
    animeListOptions: $animeListOptions
    mangaListOptions: $mangaListOptions
    staffNameLanguage: $staffNameLanguage
    restrictMessagesToFollowing: $restrictMessagesToFollowing
    disabledListActivity: $disabledListActivity
  ) {
    ...ThisUser
  }
}


""""$thisUser""""""");
var thisUser = r"""fragment ThisUser on User {
  ...UserFragment
  id
  name
  about
  bannerImage
  unreadNotificationCount
  avatar {
    large
  }
  statistics {
    anime {
      count
      episodesWatched
      minutesWatched
      meanScore
      standardDeviation
    }
    manga {
      count
      chaptersRead
      volumesRead
      meanScore
      standardDeviation
    }
  }
  options {
    displayAdultContent
    airingNotifications
    titleLanguage
    staffNameLanguage
    activityMergeTime
    restrictMessagesToFollowing
  }
  mediaListOptions {
    scoreFormat
    rowOrder
    animeList {
      customLists
      sectionOrder
      splitCompletedSectionByFormat
      advancedScoring
      advancedScoringEnabled
    }
    mangaList {
      customLists
      sectionOrder
      splitCompletedSectionByFormat
      advancedScoring
      advancedScoringEnabled
    }
  }
}


""""$userFragment""""""";
var characterFragment = r"""fragment CharacterFragment on Character {
  id
  name {
    userPreferred
  }
  image {
    large
  }
}""";
var fuzzyDate = r"""fragment FuzzyDate on FuzzyDate {
  day
  month
  year
}""";
var listActivity = r"""fragment ListActivity on ListActivity {
  id
  userId
  type
  status
  progress
  replyCount
  isLocked
  isSubscribed
  isLiked
  likeCount
  createdAt
  user {
    ...UserFragment
  }
  media {
    ...MediaFragment
  }
}


""""$userFragment""""


""""$mediaFragment""""""";
var listGroup = r"""fragment ListGroup on MediaListGroup {
  name
  isCustomList
  isSplitCompletedList
  status
  entries {
    ...MediaListEntry
  }
}


""""$mediaListEntry""""""";
var mediaFragment = r"""fragment MediaFragment on Media {
  id
  type
  isAdult
  genres
  format
  description(asHtml: false)
  title {
    userPreferred
  }
  coverImage {
    extraLarge
  }
}""";
var mediaListEntry = r"""fragment MediaListEntry on MediaList {
  id
  mediaId
  status
  updatedAt
  status
  progress
  progressVolumes
  priority
  notes
  hiddenFromStatusLists
  private
  repeat
  score
  customLists(asArray: true)
  startedAt {
    ...FuzzyDate
  }
  completedAt {
    ...FuzzyDate
  }
  media {
    ...MediaFragment
    episodes
    chapters
    status(version: 2)
    averageScore
    popularity
    startDate {
      ...FuzzyDate
    }
  }
}


""""$fuzzyDate""""


""""$fuzzyDate""""


""""$mediaFragment""""


""""$fuzzyDate""""""";
var mediaListOptions = r"""fragment MediaListOptions on MediaListTypeOptions {
  sectionOrder
  customLists
}""";
var messageActivity = r"""fragment MessageActivity on MessageActivity {
  id
  type
  message
  replyCount
  isPrivate
  isLocked
  isSubscribed
  isLiked
  likeCount
  createdAt
  userId: messengerId
  messenger {
    ...UserFragment
  }
  recipient {
    ...UserFragment
  }
}


""""$userFragment""""


""""$userFragment""""""";
var pageInfo = r"""fragment PageInfo on PageInfo {
  currentPage
  hasNextPage
}""";
var releasingMedia = r"""fragment ReleasingMedia on Media {
  ...MediaFragment
  nextAiringEpisode {
    airingAt
    timeUntilAiring
    episode
  }
  airingSchedule(notYetAired: false) {
    edges {
      node {
        airingAt
        timeUntilAiring
        episode
      }
    }
  }
}


""""$mediaFragment""""""";
var reviewFragment = r"""fragment ReviewFragment on Review {
  id
  rating
  ratingAmount
  summary
  media {
    id
    title {
      userPreferred
    }
    type
    bannerImage
  }
  user {
    ...UserFragment
  }
}


""""$userFragment""""""";
var staffFragment = r"""fragment StaffFragment on Staff {
  id
  name {
    userPreferred
  }
  image {
    large
  }
}""";
var studioFragment = r"""fragment StudioFragment on Studio {
  id
  name
}""";
var textActivity = r"""fragment TextActivity on TextActivity {
  id
  userId
  type
  replyCount
  text
  isLocked
  isSubscribed
  isLiked
  likeCount
  createdAt
  user {
    ...UserFragment
  }
}


""""$userFragment""""""";
var threadFragment = r"""fragment ThreadFragment on Thread {
  id
  title
  replyCount
  viewCount
  replyCommentId
  repliedAt
  createdAt
  isSticky
  mediaCategories {
    ...MediaFragment
  }
  categories {
    id
    name
  }
  user {
    ...UserFragment
  }
  replyUser {
    ...UserFragment
  }
}


""""$mediaFragment""""


""""$userFragment""""


""""$userFragment""""""";
var threadComment = r"""fragment ThreadComment on ThreadComment {
  id
  threadId
  comment
  isLiked
  likeCount
  createdAt
  user {
    ...UserFragment
  }
  isLocked
}


""""$userFragment""""""";
var userFragment = r"""fragment UserFragment on User {
  id
  name
  donatorTier
  donatorBadge
  moderatorRoles
  avatar {
    large
  }
}""";