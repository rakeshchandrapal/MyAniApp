// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(FetchPolicy.serializer)
      ..add(GActivitiesData.serializer)
      ..add(GActivitiesData_Page.serializer)
      ..add(GActivitiesData_Page_activities__asListActivity.serializer)
      ..add(GActivitiesData_Page_activities__asListActivity_media.serializer)
      ..add(GActivitiesData_Page_activities__asListActivity_media_coverImage
          .serializer)
      ..add(GActivitiesData_Page_activities__asListActivity_media_title
          .serializer)
      ..add(GActivitiesData_Page_activities__asListActivity_user.serializer)
      ..add(GActivitiesData_Page_activities__asListActivity_user_avatar
          .serializer)
      ..add(GActivitiesData_Page_activities__asTextActivity.serializer)
      ..add(GActivitiesData_Page_activities__asTextActivity_user.serializer)
      ..add(GActivitiesData_Page_activities__asTextActivity_user_avatar
          .serializer)
      ..add(GActivitiesData_Page_activities__base.serializer)
      ..add(GActivitiesData_Page_pageInfo.serializer)
      ..add(GActivitiesReq.serializer)
      ..add(GActivitiesVars.serializer)
      ..add(GActivityData.serializer)
      ..add(GActivityData_activity__asListActivity.serializer)
      ..add(GActivityData_activity__asListActivity_media.serializer)
      ..add(GActivityData_activity__asListActivity_media_coverImage.serializer)
      ..add(GActivityData_activity__asListActivity_media_title.serializer)
      ..add(GActivityData_activity__asListActivity_user.serializer)
      ..add(GActivityData_activity__asListActivity_user_avatar.serializer)
      ..add(GActivityData_activity__asMessageActivity.serializer)
      ..add(GActivityData_activity__asMessageActivity_messenger.serializer)
      ..add(
          GActivityData_activity__asMessageActivity_messenger_avatar.serializer)
      ..add(GActivityData_activity__asTextActivity.serializer)
      ..add(GActivityData_activity__asTextActivity_user.serializer)
      ..add(GActivityData_activity__asTextActivity_user_avatar.serializer)
      ..add(GActivityData_activity__base.serializer)
      ..add(GActivityData_replies.serializer)
      ..add(GActivityData_replies_activityReplies.serializer)
      ..add(GActivityData_replies_activityReplies_user.serializer)
      ..add(GActivityData_replies_activityReplies_user_avatar.serializer)
      ..add(GActivityData_replies_pageInfo.serializer)
      ..add(GActivityReq.serializer)
      ..add(GActivitySort.serializer)
      ..add(GActivityType.serializer)
      ..add(GActivityVars.serializer)
      ..add(GAiringScheduleInput.serializer)
      ..add(GAiringSort.serializer)
      ..add(GAniChartHighlightInput.serializer)
      ..add(GCalendarScheduleData.serializer)
      ..add(GCalendarScheduleData_Page.serializer)
      ..add(GCalendarScheduleData_Page_airingSchedules.serializer)
      ..add(GCalendarScheduleData_Page_airingSchedules_media.serializer)
      ..add(GCalendarScheduleData_Page_airingSchedules_media_coverImage
          .serializer)
      ..add(GCalendarScheduleData_Page_airingSchedules_media_title.serializer)
      ..add(GCalendarScheduleData_Page_pageInfo.serializer)
      ..add(GCalendarScheduleReq.serializer)
      ..add(GCalendarScheduleVars.serializer)
      ..add(GCharacterData.serializer)
      ..add(GCharacterData_Character.serializer)
      ..add(GCharacterData_Character_dateOfBirth.serializer)
      ..add(GCharacterData_Character_image.serializer)
      ..add(GCharacterData_Character_media.serializer)
      ..add(GCharacterData_Character_media_edges.serializer)
      ..add(GCharacterData_Character_media_edges_node.serializer)
      ..add(GCharacterData_Character_media_edges_node_coverImage.serializer)
      ..add(GCharacterData_Character_media_edges_node_title.serializer)
      ..add(GCharacterData_Character_media_pageInfo.serializer)
      ..add(GCharacterData_Character_name.serializer)
      ..add(GCharacterNameInput.serializer)
      ..add(GCharacterReq.serializer)
      ..add(GCharacterRole.serializer)
      ..add(GCharacterSort.serializer)
      ..add(GCharacterVars.serializer)
      ..add(GCharactersData.serializer)
      ..add(GCharactersData_Media.serializer)
      ..add(GCharactersData_Media_characters.serializer)
      ..add(GCharactersData_Media_characters_edges.serializer)
      ..add(GCharactersData_Media_characters_edges_node.serializer)
      ..add(GCharactersData_Media_characters_edges_node_image.serializer)
      ..add(GCharactersData_Media_characters_edges_node_name.serializer)
      ..add(GCharactersData_Media_characters_edges_voiceActorRoles.serializer)
      ..add(GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor
          .serializer)
      ..add(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_image
              .serializer)
      ..add(
          GCharactersData_Media_characters_edges_voiceActorRoles_voiceActor_name
              .serializer)
      ..add(GCharactersData_Media_characters_pageInfo.serializer)
      ..add(GCharactersReq.serializer)
      ..add(GCharactersVars.serializer)
      ..add(GCommentData.serializer)
      ..add(GCommentData_ThreadComment.serializer)
      ..add(GCommentData_ThreadComment_user.serializer)
      ..add(GCommentData_ThreadComment_user_avatar.serializer)
      ..add(GCommentReq.serializer)
      ..add(GCommentVars.serializer)
      ..add(GCountryCode.serializer)
      ..add(GDeleteActivityData.serializer)
      ..add(GDeleteActivityData_DeleteActivity.serializer)
      ..add(GDeleteActivityReplyData.serializer)
      ..add(GDeleteActivityReplyData_DeleteActivityReply.serializer)
      ..add(GDeleteActivityReplyReq.serializer)
      ..add(GDeleteActivityReplyVars.serializer)
      ..add(GDeleteActivityReq.serializer)
      ..add(GDeleteActivityVars.serializer)
      ..add(GDeleteCommentData.serializer)
      ..add(GDeleteCommentData_DeleteThreadComment.serializer)
      ..add(GDeleteCommentReq.serializer)
      ..add(GDeleteCommentVars.serializer)
      ..add(GDeleteMediaListEntryData.serializer)
      ..add(GDeleteMediaListEntryData_DeleteMediaListEntry.serializer)
      ..add(GDeleteMediaListEntryReq.serializer)
      ..add(GDeleteMediaListEntryVars.serializer)
      ..add(GExploreData.serializer)
      ..add(GExploreData_nextSeason.serializer)
      ..add(GExploreData_nextSeason_media.serializer)
      ..add(GExploreData_nextSeason_media_coverImage.serializer)
      ..add(GExploreData_nextSeason_media_title.serializer)
      ..add(GExploreData_popular.serializer)
      ..add(GExploreData_popular_media.serializer)
      ..add(GExploreData_popular_media_coverImage.serializer)
      ..add(GExploreData_popular_media_title.serializer)
      ..add(GExploreData_recent.serializer)
      ..add(GExploreData_recent_media.serializer)
      ..add(GExploreData_recent_media_coverImage.serializer)
      ..add(GExploreData_recent_media_title.serializer)
      ..add(GExploreData_season.serializer)
      ..add(GExploreData_season_media.serializer)
      ..add(GExploreData_season_media_coverImage.serializer)
      ..add(GExploreData_season_media_title.serializer)
      ..add(GExploreData_trending.serializer)
      ..add(GExploreData_trending_media.serializer)
      ..add(GExploreData_trending_media_coverImage.serializer)
      ..add(GExploreData_trending_media_title.serializer)
      ..add(GExploreReq.serializer)
      ..add(GExploreVars.serializer)
      ..add(GExternalLinkMediaType.serializer)
      ..add(GExternalLinkType.serializer)
      ..add(GForumOverviewData.serializer)
      ..add(GForumOverviewData_new.serializer)
      ..add(GForumOverviewData_new_threads.serializer)
      ..add(GForumOverviewData_new_threads_categories.serializer)
      ..add(GForumOverviewData_new_threads_mediaCategories.serializer)
      ..add(
          GForumOverviewData_new_threads_mediaCategories_coverImage.serializer)
      ..add(GForumOverviewData_new_threads_mediaCategories_title.serializer)
      ..add(GForumOverviewData_new_threads_replyUser.serializer)
      ..add(GForumOverviewData_new_threads_replyUser_avatar.serializer)
      ..add(GForumOverviewData_new_threads_user.serializer)
      ..add(GForumOverviewData_new_threads_user_avatar.serializer)
      ..add(GForumOverviewData_recent.serializer)
      ..add(GForumOverviewData_recent_threads.serializer)
      ..add(GForumOverviewData_recent_threads_categories.serializer)
      ..add(GForumOverviewData_recent_threads_mediaCategories.serializer)
      ..add(GForumOverviewData_recent_threads_mediaCategories_coverImage
          .serializer)
      ..add(GForumOverviewData_recent_threads_mediaCategories_title.serializer)
      ..add(GForumOverviewData_recent_threads_replyUser.serializer)
      ..add(GForumOverviewData_recent_threads_replyUser_avatar.serializer)
      ..add(GForumOverviewData_recent_threads_user.serializer)
      ..add(GForumOverviewData_recent_threads_user_avatar.serializer)
      ..add(GForumOverviewData_release.serializer)
      ..add(GForumOverviewData_release_threads.serializer)
      ..add(GForumOverviewData_release_threads_categories.serializer)
      ..add(GForumOverviewData_release_threads_mediaCategories.serializer)
      ..add(GForumOverviewData_release_threads_mediaCategories_coverImage
          .serializer)
      ..add(GForumOverviewData_release_threads_mediaCategories_title.serializer)
      ..add(GForumOverviewData_release_threads_replyUser.serializer)
      ..add(GForumOverviewData_release_threads_replyUser_avatar.serializer)
      ..add(GForumOverviewData_release_threads_user.serializer)
      ..add(GForumOverviewData_release_threads_user_avatar.serializer)
      ..add(GForumOverviewReq.serializer)
      ..add(GForumOverviewVars.serializer)
      ..add(GForumsData.serializer)
      ..add(GForumsData_Page.serializer)
      ..add(GForumsData_Page_pageInfo.serializer)
      ..add(GForumsData_Page_threads.serializer)
      ..add(GForumsData_Page_threads_categories.serializer)
      ..add(GForumsData_Page_threads_mediaCategories.serializer)
      ..add(GForumsData_Page_threads_mediaCategories_coverImage.serializer)
      ..add(GForumsData_Page_threads_mediaCategories_title.serializer)
      ..add(GForumsData_Page_threads_replyUser.serializer)
      ..add(GForumsData_Page_threads_replyUser_avatar.serializer)
      ..add(GForumsData_Page_threads_user.serializer)
      ..add(GForumsData_Page_threads_user_avatar.serializer)
      ..add(GForumsReq.serializer)
      ..add(GForumsVars.serializer)
      ..add(GFuzzyDateData.serializer)
      ..add(GFuzzyDateInput.serializer)
      ..add(GFuzzyDateReq.serializer)
      ..add(GFuzzyDateVars.serializer)
      ..add(GGenreCollectionData.serializer)
      ..add(GGenreCollectionData_tags.serializer)
      ..add(GGenreCollectionReq.serializer)
      ..add(GGenreCollectionVars.serializer)
      ..add(GGenreStatData.serializer)
      ..add(GGenreStatReq.serializer)
      ..add(GGenreStatVars.serializer)
      ..add(GHomeOverviewData.serializer)
      ..add(GHomeOverviewData_forums.serializer)
      ..add(GHomeOverviewData_forums_threads.serializer)
      ..add(GHomeOverviewData_forums_threads_categories.serializer)
      ..add(GHomeOverviewData_forums_threads_mediaCategories.serializer)
      ..add(GHomeOverviewData_forums_threads_mediaCategories_coverImage
          .serializer)
      ..add(GHomeOverviewData_forums_threads_mediaCategories_title.serializer)
      ..add(GHomeOverviewData_forums_threads_replyUser.serializer)
      ..add(GHomeOverviewData_forums_threads_replyUser_avatar.serializer)
      ..add(GHomeOverviewData_forums_threads_user.serializer)
      ..add(GHomeOverviewData_forums_threads_user_avatar.serializer)
      ..add(GHomeOverviewData_list.serializer)
      ..add(GHomeOverviewData_list_mediaList.serializer)
      ..add(GHomeOverviewData_list_mediaList_completedAt.serializer)
      ..add(GHomeOverviewData_list_mediaList_media.serializer)
      ..add(GHomeOverviewData_list_mediaList_media_coverImage.serializer)
      ..add(GHomeOverviewData_list_mediaList_media_startDate.serializer)
      ..add(GHomeOverviewData_list_mediaList_media_title.serializer)
      ..add(GHomeOverviewData_list_mediaList_startedAt.serializer)
      ..add(GHomeOverviewData_releasing.serializer)
      ..add(GHomeOverviewData_releasing_media.serializer)
      ..add(GHomeOverviewData_releasing_media_airingSchedule.serializer)
      ..add(GHomeOverviewData_releasing_media_airingSchedule_edges.serializer)
      ..add(GHomeOverviewData_releasing_media_airingSchedule_edges_node
          .serializer)
      ..add(GHomeOverviewData_releasing_media_coverImage.serializer)
      ..add(GHomeOverviewData_releasing_media_nextAiringEpisode.serializer)
      ..add(GHomeOverviewData_releasing_media_title.serializer)
      ..add(GHomeOverviewData_reviews.serializer)
      ..add(GHomeOverviewData_reviews_reviews.serializer)
      ..add(GHomeOverviewData_reviews_reviews_media.serializer)
      ..add(GHomeOverviewData_reviews_reviews_media_title.serializer)
      ..add(GHomeOverviewData_reviews_reviews_user.serializer)
      ..add(GHomeOverviewData_reviews_reviews_user_avatar.serializer)
      ..add(GHomeOverviewReq.serializer)
      ..add(GHomeOverviewVars.serializer)
      ..add(GLikeableType.serializer)
      ..add(GLikesData.serializer)
      ..add(GLikesData_Page.serializer)
      ..add(GLikesData_Page_likes.serializer)
      ..add(GLikesData_Page_likes_avatar.serializer)
      ..add(GLikesData_Page_pageInfo.serializer)
      ..add(GLikesReq.serializer)
      ..add(GLikesVars.serializer)
      ..add(GListActivityData.serializer)
      ..add(GListActivityData_media.serializer)
      ..add(GListActivityData_media_coverImage.serializer)
      ..add(GListActivityData_media_title.serializer)
      ..add(GListActivityData_user.serializer)
      ..add(GListActivityData_user_avatar.serializer)
      ..add(GListActivityOptionInput.serializer)
      ..add(GListActivityReq.serializer)
      ..add(GListActivityVars.serializer)
      ..add(GListGroupData.serializer)
      ..add(GListGroupData_entries.serializer)
      ..add(GListGroupData_entries_completedAt.serializer)
      ..add(GListGroupData_entries_media.serializer)
      ..add(GListGroupData_entries_media_coverImage.serializer)
      ..add(GListGroupData_entries_media_startDate.serializer)
      ..add(GListGroupData_entries_media_title.serializer)
      ..add(GListGroupData_entries_startedAt.serializer)
      ..add(GListGroupReq.serializer)
      ..add(GListGroupVars.serializer)
      ..add(GMediaData.serializer)
      ..add(GMediaData_Media.serializer)
      ..add(GMediaData_Media_characters.serializer)
      ..add(GMediaData_Media_characters_nodes.serializer)
      ..add(GMediaData_Media_coverImage.serializer)
      ..add(GMediaData_Media_endDate.serializer)
      ..add(GMediaData_Media_externalLinks.serializer)
      ..add(GMediaData_Media_mediaListEntry.serializer)
      ..add(GMediaData_Media_recommendations.serializer)
      ..add(GMediaData_Media_recommendations_nodes.serializer)
      ..add(GMediaData_Media_relations.serializer)
      ..add(GMediaData_Media_relations_edges.serializer)
      ..add(GMediaData_Media_relations_edges_node.serializer)
      ..add(GMediaData_Media_relations_edges_node_coverImage.serializer)
      ..add(GMediaData_Media_relations_edges_node_title.serializer)
      ..add(GMediaData_Media_reviews.serializer)
      ..add(GMediaData_Media_reviews_nodes.serializer)
      ..add(GMediaData_Media_staff.serializer)
      ..add(GMediaData_Media_staff_nodes.serializer)
      ..add(GMediaData_Media_startDate.serializer)
      ..add(GMediaData_Media_studios.serializer)
      ..add(GMediaData_Media_studios_nodes.serializer)
      ..add(GMediaData_Media_tags.serializer)
      ..add(GMediaData_Media_title.serializer)
      ..add(GMediaData_Media_trailer.serializer)
      ..add(GMediaEntryData.serializer)
      ..add(GMediaEntryData_MediaList.serializer)
      ..add(GMediaEntryData_MediaList_completedAt.serializer)
      ..add(GMediaEntryData_MediaList_media.serializer)
      ..add(GMediaEntryData_MediaList_media_coverImage.serializer)
      ..add(GMediaEntryData_MediaList_media_startDate.serializer)
      ..add(GMediaEntryData_MediaList_media_title.serializer)
      ..add(GMediaEntryData_MediaList_startedAt.serializer)
      ..add(GMediaEntryReq.serializer)
      ..add(GMediaEntryVars.serializer)
      ..add(GMediaExternalLinkInput.serializer)
      ..add(GMediaFormat.serializer)
      ..add(GMediaFragmentData.serializer)
      ..add(GMediaFragmentData_coverImage.serializer)
      ..add(GMediaFragmentData_title.serializer)
      ..add(GMediaFragmentReq.serializer)
      ..add(GMediaFragmentVars.serializer)
      ..add(GMediaListData.serializer)
      ..add(GMediaListData_MediaListCollection.serializer)
      ..add(GMediaListData_MediaListCollection_lists.serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries.serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries_completedAt
          .serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries_media.serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries_media_coverImage
          .serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries_media_startDate
          .serializer)
      ..add(GMediaListData_MediaListCollection_lists_entries_media_title
          .serializer)
      ..add(
          GMediaListData_MediaListCollection_lists_entries_startedAt.serializer)
      ..add(GMediaListData_MediaListCollection_user.serializer)
      ..add(GMediaListData_MediaListCollection_user_mediaListOptions.serializer)
      ..add(GMediaListData_MediaListCollection_user_mediaListOptions_animeList
          .serializer)
      ..add(GMediaListData_MediaListCollection_user_mediaListOptions_mangaList
          .serializer)
      ..add(GMediaListEntryData.serializer)
      ..add(GMediaListEntryData_completedAt.serializer)
      ..add(GMediaListEntryData_media.serializer)
      ..add(GMediaListEntryData_media_coverImage.serializer)
      ..add(GMediaListEntryData_media_startDate.serializer)
      ..add(GMediaListEntryData_media_title.serializer)
      ..add(GMediaListEntryData_startedAt.serializer)
      ..add(GMediaListEntryReq.serializer)
      ..add(GMediaListEntryVars.serializer)
      ..add(GMediaListOptionsData.serializer)
      ..add(GMediaListOptionsInput.serializer)
      ..add(GMediaListOptionsReq.serializer)
      ..add(GMediaListOptionsVars.serializer)
      ..add(GMediaListReq.serializer)
      ..add(GMediaListSort.serializer)
      ..add(GMediaListStatus.serializer)
      ..add(GMediaListVars.serializer)
      ..add(GMediaRankType.serializer)
      ..add(GMediaRecommendationsData.serializer)
      ..add(GMediaRecommendationsData_Media.serializer)
      ..add(GMediaRecommendationsData_Media_recommendations.serializer)
      ..add(GMediaRecommendationsData_Media_recommendations_nodes.serializer)
      ..add(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation
              .serializer)
      ..add(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_coverImage
              .serializer)
      ..add(
          GMediaRecommendationsData_Media_recommendations_nodes_mediaRecommendation_title
              .serializer)
      ..add(GMediaRecommendationsData_Media_recommendations_pageInfo.serializer)
      ..add(GMediaRecommendationsReq.serializer)
      ..add(GMediaRecommendationsVars.serializer)
      ..add(GMediaRelation.serializer)
      ..add(GMediaReq.serializer)
      ..add(GMediaSeason.serializer)
      ..add(GMediaSort.serializer)
      ..add(GMediaSource.serializer)
      ..add(GMediaStaffData.serializer)
      ..add(GMediaStaffData_Media.serializer)
      ..add(GMediaStaffData_Media_staff.serializer)
      ..add(GMediaStaffData_Media_staff_edges.serializer)
      ..add(GMediaStaffData_Media_staff_edges_node.serializer)
      ..add(GMediaStaffData_Media_staff_edges_node_image.serializer)
      ..add(GMediaStaffData_Media_staff_edges_node_name.serializer)
      ..add(GMediaStaffData_Media_staff_pageInfo.serializer)
      ..add(GMediaStaffReq.serializer)
      ..add(GMediaStaffVars.serializer)
      ..add(GMediaStatus.serializer)
      ..add(GMediaTitleInput.serializer)
      ..add(GMediaTrendSort.serializer)
      ..add(GMediaType.serializer)
      ..add(GMediaVars.serializer)
      ..add(GMessageActivityData.serializer)
      ..add(GMessageActivityData_messenger.serializer)
      ..add(GMessageActivityData_messenger_avatar.serializer)
      ..add(GMessageActivityReq.serializer)
      ..add(GMessageActivityVars.serializer)
      ..add(GModActionType.serializer)
      ..add(GModRole.serializer)
      ..add(GNotificationCountData.serializer)
      ..add(GNotificationCountData_Viewer.serializer)
      ..add(GNotificationCountData_Viewer_options.serializer)
      ..add(GNotificationCountReq.serializer)
      ..add(GNotificationCountVars.serializer)
      ..add(GNotificationOptionInput.serializer)
      ..add(GNotificationType.serializer)
      ..add(GNotificationsData.serializer)
      ..add(GNotificationsData_Page.serializer)
      ..add(GNotificationsData_Page_notifications__asActivityLikeNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityLikeNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityLikeNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asActivityMentionNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityMentionNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityMentionNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asActivityMessageNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityMessageNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityMessageNotification_user_avatar
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplyLikeNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asActivityReplyNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplyNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplyNotification_user_avatar
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asActivityReplySubscribedNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asAiringNotification
          .serializer)
      ..add(GNotificationsData_Page_notifications__asAiringNotification_media
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asAiringNotification_media_coverImage
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asAiringNotification_media_title
              .serializer)
      ..add(GNotificationsData_Page_notifications__asFollowingNotification
          .serializer)
      ..add(GNotificationsData_Page_notifications__asFollowingNotification_user
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asFollowingNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asMediaDataChangeNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_coverImage
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaDataChangeNotification_media_title
              .serializer)
      ..add(GNotificationsData_Page_notifications__asMediaDeletionNotification
          .serializer)
      ..add(GNotificationsData_Page_notifications__asMediaMergeNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaMergeNotification_media
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaMergeNotification_media_coverImage
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asMediaMergeNotification_media_title
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_coverImage
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asRelatedMediaAdditionNotification_media_title
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_thread
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentLikeNotification_user_avatar
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_thread
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentMentionNotification_user_avatar
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_thread
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentReplyNotification_user_avatar
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_thread
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user
              .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadCommentSubscribedNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__asThreadLikeNotification
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadLikeNotification_thread
              .serializer)
      ..add(GNotificationsData_Page_notifications__asThreadLikeNotification_user
          .serializer)
      ..add(
          GNotificationsData_Page_notifications__asThreadLikeNotification_user_avatar
              .serializer)
      ..add(GNotificationsData_Page_notifications__base.serializer)
      ..add(GNotificationsData_Page_pageInfo.serializer)
      ..add(GNotificationsReq.serializer)
      ..add(GNotificationsVars.serializer)
      ..add(GPageInfoData.serializer)
      ..add(GPageInfoReq.serializer)
      ..add(GPageInfoVars.serializer)
      ..add(GRateReviewData.serializer)
      ..add(GRateReviewData_RateReview.serializer)
      ..add(GRateReviewReq.serializer)
      ..add(GRateReviewVars.serializer)
      ..add(GRecommendationRating.serializer)
      ..add(GRecommendationSort.serializer)
      ..add(GRecommendationsData.serializer)
      ..add(GRecommendationsData_Page.serializer)
      ..add(GRecommendationsData_Page_pageInfo.serializer)
      ..add(GRecommendationsData_Page_recommendations.serializer)
      ..add(GRecommendationsData_Page_recommendations_media.serializer)
      ..add(GRecommendationsData_Page_recommendations_mediaRecommendation
          .serializer)
      ..add(
          GRecommendationsData_Page_recommendations_mediaRecommendation_coverImage
              .serializer)
      ..add(GRecommendationsData_Page_recommendations_mediaRecommendation_title
          .serializer)
      ..add(
          GRecommendationsData_Page_recommendations_media_coverImage.serializer)
      ..add(GRecommendationsData_Page_recommendations_media_title.serializer)
      ..add(GRecommendationsReq.serializer)
      ..add(GRecommendationsVars.serializer)
      ..add(GReleasesListData.serializer)
      ..add(GReleasesListData_Page.serializer)
      ..add(GReleasesListData_Page_media.serializer)
      ..add(GReleasesListData_Page_media_airingSchedule.serializer)
      ..add(GReleasesListData_Page_media_airingSchedule_edges.serializer)
      ..add(GReleasesListData_Page_media_airingSchedule_edges_node.serializer)
      ..add(GReleasesListData_Page_media_coverImage.serializer)
      ..add(GReleasesListData_Page_media_nextAiringEpisode.serializer)
      ..add(GReleasesListData_Page_media_title.serializer)
      ..add(GReleasesListData_Page_pageInfo.serializer)
      ..add(GReleasesListReq.serializer)
      ..add(GReleasesListVars.serializer)
      ..add(GReleasingMediaData.serializer)
      ..add(GReleasingMediaData_airingSchedule.serializer)
      ..add(GReleasingMediaData_airingSchedule_edges.serializer)
      ..add(GReleasingMediaData_airingSchedule_edges_node.serializer)
      ..add(GReleasingMediaData_coverImage.serializer)
      ..add(GReleasingMediaData_nextAiringEpisode.serializer)
      ..add(GReleasingMediaData_title.serializer)
      ..add(GReleasingMediaReq.serializer)
      ..add(GReleasingMediaVars.serializer)
      ..add(GReviewData.serializer)
      ..add(GReviewData_Review.serializer)
      ..add(GReviewData_Review_media.serializer)
      ..add(GReviewData_Review_media_title.serializer)
      ..add(GReviewData_Review_user.serializer)
      ..add(GReviewData_Review_user_avatar.serializer)
      ..add(GReviewFragmentData.serializer)
      ..add(GReviewFragmentData_media.serializer)
      ..add(GReviewFragmentData_media_title.serializer)
      ..add(GReviewFragmentData_user.serializer)
      ..add(GReviewFragmentData_user_avatar.serializer)
      ..add(GReviewFragmentReq.serializer)
      ..add(GReviewFragmentVars.serializer)
      ..add(GReviewRating.serializer)
      ..add(GReviewReq.serializer)
      ..add(GReviewSort.serializer)
      ..add(GReviewVars.serializer)
      ..add(GReviewsData.serializer)
      ..add(GReviewsData_Media.serializer)
      ..add(GReviewsData_Media_reviews.serializer)
      ..add(GReviewsData_Media_reviews_nodes.serializer)
      ..add(GReviewsData_Media_reviews_nodes_user.serializer)
      ..add(GReviewsData_Media_reviews_nodes_user_avatar.serializer)
      ..add(GReviewsData_Media_reviews_pageInfo.serializer)
      ..add(GReviewsReq.serializer)
      ..add(GReviewsVars.serializer)
      ..add(GRevisionHistoryAction.serializer)
      ..add(GSaveActivityReplyData.serializer)
      ..add(GSaveActivityReplyData_SaveActivityReply.serializer)
      ..add(GSaveActivityReplyData_SaveActivityReply_user.serializer)
      ..add(GSaveActivityReplyData_SaveActivityReply_user_avatar.serializer)
      ..add(GSaveActivityReplyReq.serializer)
      ..add(GSaveActivityReplyVars.serializer)
      ..add(GSaveCommentData.serializer)
      ..add(GSaveCommentData_SaveThreadComment.serializer)
      ..add(GSaveCommentData_SaveThreadComment_user.serializer)
      ..add(GSaveCommentData_SaveThreadComment_user_avatar.serializer)
      ..add(GSaveCommentReq.serializer)
      ..add(GSaveCommentVars.serializer)
      ..add(GSaveMediaListEntryData.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry_completedAt.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry_media.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry_media_coverImage
          .serializer)
      ..add(
          GSaveMediaListEntryData_SaveMediaListEntry_media_startDate.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry_media_title.serializer)
      ..add(GSaveMediaListEntryData_SaveMediaListEntry_startedAt.serializer)
      ..add(GSaveMediaListEntryReq.serializer)
      ..add(GSaveMediaListEntryVars.serializer)
      ..add(GSaveMessageActivityData.serializer)
      ..add(GSaveMessageActivityData_SaveMessageActivity.serializer)
      ..add(GSaveMessageActivityData_SaveMessageActivity_messenger.serializer)
      ..add(GSaveMessageActivityData_SaveMessageActivity_messenger_avatar
          .serializer)
      ..add(GSaveMessageActivityReq.serializer)
      ..add(GSaveMessageActivityVars.serializer)
      ..add(GSaveRecommendationData.serializer)
      ..add(GSaveRecommendationData_SaveRecommendation.serializer)
      ..add(GSaveRecommendationData_SaveRecommendation_media.serializer)
      ..add(GSaveRecommendationData_SaveRecommendation_mediaRecommendation
          .serializer)
      ..add(
          GSaveRecommendationData_SaveRecommendation_mediaRecommendation_coverImage
              .serializer)
      ..add(GSaveRecommendationData_SaveRecommendation_mediaRecommendation_title
          .serializer)
      ..add(GSaveRecommendationData_SaveRecommendation_media_coverImage
          .serializer)
      ..add(GSaveRecommendationData_SaveRecommendation_media_title.serializer)
      ..add(GSaveRecommendationReq.serializer)
      ..add(GSaveRecommendationVars.serializer)
      ..add(GSaveTextActivityData.serializer)
      ..add(GSaveTextActivityData_SaveTextActivity.serializer)
      ..add(GSaveTextActivityData_SaveTextActivity_user.serializer)
      ..add(GSaveTextActivityData_SaveTextActivity_user_avatar.serializer)
      ..add(GSaveTextActivityReq.serializer)
      ..add(GSaveTextActivityVars.serializer)
      ..add(GScoreFormat.serializer)
      ..add(GSearchData.serializer)
      ..add(GSearchData_Page.serializer)
      ..add(GSearchData_Page_media.serializer)
      ..add(GSearchData_Page_media_coverImage.serializer)
      ..add(GSearchData_Page_media_title.serializer)
      ..add(GSearchData_Page_pageInfo.serializer)
      ..add(GSearchReq.serializer)
      ..add(GSearchVars.serializer)
      ..add(GSiteTrendSort.serializer)
      ..add(GSocialsData.serializer)
      ..add(GSocialsData_followers.serializer)
      ..add(GSocialsData_followers_followers.serializer)
      ..add(GSocialsData_followers_followers_avatar.serializer)
      ..add(GSocialsData_followers_pageInfo.serializer)
      ..add(GSocialsData_following.serializer)
      ..add(GSocialsData_following_following.serializer)
      ..add(GSocialsData_following_following_avatar.serializer)
      ..add(GSocialsData_following_pageInfo.serializer)
      ..add(GSocialsReq.serializer)
      ..add(GSocialsVars.serializer)
      ..add(GStaffData.serializer)
      ..add(GStaffData_Staff.serializer)
      ..add(GStaffData_Staff_characterMedia.serializer)
      ..add(GStaffData_Staff_characterMedia_edges.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_characters.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_characters_image.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_characters_name.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_node.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_node_coverImage.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_node_startDate.serializer)
      ..add(GStaffData_Staff_characterMedia_edges_node_title.serializer)
      ..add(GStaffData_Staff_characterMedia_pageInfo.serializer)
      ..add(GStaffData_Staff_dateOfBirth.serializer)
      ..add(GStaffData_Staff_dateOfDeath.serializer)
      ..add(GStaffData_Staff_image.serializer)
      ..add(GStaffData_Staff_name.serializer)
      ..add(GStaffData_Staff_staffMedia.serializer)
      ..add(GStaffData_Staff_staffMedia_edges.serializer)
      ..add(GStaffData_Staff_staffMedia_edges_node.serializer)
      ..add(GStaffData_Staff_staffMedia_edges_node_coverImage.serializer)
      ..add(GStaffData_Staff_staffMedia_edges_node_title.serializer)
      ..add(GStaffData_Staff_staffMedia_pageInfo.serializer)
      ..add(GStaffLanguage.serializer)
      ..add(GStaffNameInput.serializer)
      ..add(GStaffReq.serializer)
      ..add(GStaffSort.serializer)
      ..add(GStaffVars.serializer)
      ..add(GStudioSort.serializer)
      ..add(GSubmissionSort.serializer)
      ..add(GSubmissionStatus.serializer)
      ..add(GTextActivityData.serializer)
      ..add(GTextActivityData_user.serializer)
      ..add(GTextActivityData_user_avatar.serializer)
      ..add(GTextActivityReq.serializer)
      ..add(GTextActivityVars.serializer)
      ..add(GThisUserData.serializer)
      ..add(GThisUserData_avatar.serializer)
      ..add(GThisUserData_mediaListOptions.serializer)
      ..add(GThisUserData_mediaListOptions_animeList.serializer)
      ..add(GThisUserData_options.serializer)
      ..add(GThisUserData_statistics.serializer)
      ..add(GThisUserData_statistics_anime.serializer)
      ..add(GThisUserData_statistics_manga.serializer)
      ..add(GThisUserReq.serializer)
      ..add(GThisUserVars.serializer)
      ..add(GThreadCommentData.serializer)
      ..add(GThreadCommentData_user.serializer)
      ..add(GThreadCommentData_user_avatar.serializer)
      ..add(GThreadCommentReq.serializer)
      ..add(GThreadCommentSort.serializer)
      ..add(GThreadCommentVars.serializer)
      ..add(GThreadData.serializer)
      ..add(GThreadData_comments.serializer)
      ..add(GThreadData_comments_pageInfo.serializer)
      ..add(GThreadData_comments_threadComments.serializer)
      ..add(GThreadData_comments_threadComments_user.serializer)
      ..add(GThreadData_comments_threadComments_user_avatar.serializer)
      ..add(GThreadData_thread.serializer)
      ..add(GThreadData_thread_categories.serializer)
      ..add(GThreadData_thread_mediaCategories.serializer)
      ..add(GThreadData_thread_mediaCategories_coverImage.serializer)
      ..add(GThreadData_thread_mediaCategories_title.serializer)
      ..add(GThreadData_thread_replyUser.serializer)
      ..add(GThreadData_thread_replyUser_avatar.serializer)
      ..add(GThreadData_thread_user.serializer)
      ..add(GThreadData_thread_user_avatar.serializer)
      ..add(GThreadFragmentData.serializer)
      ..add(GThreadFragmentData_categories.serializer)
      ..add(GThreadFragmentData_mediaCategories.serializer)
      ..add(GThreadFragmentData_mediaCategories_coverImage.serializer)
      ..add(GThreadFragmentData_mediaCategories_title.serializer)
      ..add(GThreadFragmentData_replyUser.serializer)
      ..add(GThreadFragmentData_replyUser_avatar.serializer)
      ..add(GThreadFragmentData_user.serializer)
      ..add(GThreadFragmentData_user_avatar.serializer)
      ..add(GThreadFragmentReq.serializer)
      ..add(GThreadFragmentVars.serializer)
      ..add(GThreadReq.serializer)
      ..add(GThreadSort.serializer)
      ..add(GThreadVars.serializer)
      ..add(GThreadsData.serializer)
      ..add(GThreadsData_Page.serializer)
      ..add(GThreadsData_Page_pageInfo.serializer)
      ..add(GThreadsData_Page_threads.serializer)
      ..add(GThreadsData_Page_threads_categories.serializer)
      ..add(GThreadsData_Page_threads_mediaCategories.serializer)
      ..add(GThreadsData_Page_threads_mediaCategories_coverImage.serializer)
      ..add(GThreadsData_Page_threads_mediaCategories_title.serializer)
      ..add(GThreadsData_Page_threads_replyUser.serializer)
      ..add(GThreadsData_Page_threads_replyUser_avatar.serializer)
      ..add(GThreadsData_Page_threads_user.serializer)
      ..add(GThreadsData_Page_threads_user_avatar.serializer)
      ..add(GThreadsReq.serializer)
      ..add(GThreadsVars.serializer)
      ..add(GToggleActivitySubscriptionData.serializer)
      ..add(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asListActivity
              .serializer)
      ..add(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asMessageActivity
              .serializer)
      ..add(
          GToggleActivitySubscriptionData_ToggleActivitySubscription__asTextActivity
              .serializer)
      ..add(GToggleActivitySubscriptionData_ToggleActivitySubscription__base
          .serializer)
      ..add(GToggleActivitySubscriptionReq.serializer)
      ..add(GToggleActivitySubscriptionVars.serializer)
      ..add(GToggleFavoriteData.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_anime.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_anime_pageInfo.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_characters.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_characters_pageInfo.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_manga.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_manga_pageInfo.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_staff.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_staff_pageInfo.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_studios.serializer)
      ..add(GToggleFavoriteData_ToggleFavourite_studios_pageInfo.serializer)
      ..add(GToggleFavoriteReq.serializer)
      ..add(GToggleFavoriteVars.serializer)
      ..add(GToggleLikeData.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asActivityReply.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asListActivity.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asMessageActivity.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asTextActivity.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asThread.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__asThreadComment.serializer)
      ..add(GToggleLikeData_ToggleLikeV2__base.serializer)
      ..add(GToggleLikeReq.serializer)
      ..add(GToggleLikeVars.serializer)
      ..add(GToggleThreadSubscriptionData.serializer)
      ..add(GToggleThreadSubscriptionData_ToggleThreadSubscription.serializer)
      ..add(GToggleThreadSubscriptionReq.serializer)
      ..add(GToggleThreadSubscriptionVars.serializer)
      ..add(GUpdateUserData.serializer)
      ..add(GUpdateUserData_UpdateUser.serializer)
      ..add(GUpdateUserData_UpdateUser_avatar.serializer)
      ..add(GUpdateUserData_UpdateUser_mediaListOptions.serializer)
      ..add(GUpdateUserData_UpdateUser_mediaListOptions_animeList.serializer)
      ..add(GUpdateUserData_UpdateUser_options.serializer)
      ..add(GUpdateUserData_UpdateUser_statistics.serializer)
      ..add(GUpdateUserData_UpdateUser_statistics_anime.serializer)
      ..add(GUpdateUserData_UpdateUser_statistics_manga.serializer)
      ..add(GUpdateUserReq.serializer)
      ..add(GUpdateUserVars.serializer)
      ..add(GUserActivitiesData.serializer)
      ..add(GUserActivitiesData_Page.serializer)
      ..add(GUserActivitiesData_Page_activities__asListActivity.serializer)
      ..add(
          GUserActivitiesData_Page_activities__asListActivity_media.serializer)
      ..add(GUserActivitiesData_Page_activities__asListActivity_media_coverImage
          .serializer)
      ..add(GUserActivitiesData_Page_activities__asListActivity_media_title
          .serializer)
      ..add(GUserActivitiesData_Page_activities__asListActivity_user.serializer)
      ..add(GUserActivitiesData_Page_activities__asListActivity_user_avatar
          .serializer)
      ..add(GUserActivitiesData_Page_activities__asMessageActivity.serializer)
      ..add(GUserActivitiesData_Page_activities__asMessageActivity_messenger
          .serializer)
      ..add(
          GUserActivitiesData_Page_activities__asMessageActivity_messenger_avatar
              .serializer)
      ..add(GUserActivitiesData_Page_activities__asTextActivity.serializer)
      ..add(GUserActivitiesData_Page_activities__asTextActivity_user.serializer)
      ..add(GUserActivitiesData_Page_activities__asTextActivity_user_avatar
          .serializer)
      ..add(GUserActivitiesData_Page_activities__base.serializer)
      ..add(GUserActivitiesData_Page_pageInfo.serializer)
      ..add(GUserActivitiesReq.serializer)
      ..add(GUserActivitiesVars.serializer)
      ..add(GUserData.serializer)
      ..add(GUserData_User.serializer)
      ..add(GUserData_User_avatar.serializer)
      ..add(GUserData_User_favourites.serializer)
      ..add(GUserData_User_favourites_anime.serializer)
      ..add(GUserData_User_favourites_anime_nodes.serializer)
      ..add(GUserData_User_favourites_anime_nodes_coverImage.serializer)
      ..add(GUserData_User_favourites_anime_nodes_title.serializer)
      ..add(GUserData_User_favourites_manga.serializer)
      ..add(GUserData_User_favourites_manga_nodes.serializer)
      ..add(GUserData_User_favourites_manga_nodes_coverImage.serializer)
      ..add(GUserData_User_favourites_manga_nodes_title.serializer)
      ..add(GUserData_User_mediaListOptions.serializer)
      ..add(GUserData_User_statistics.serializer)
      ..add(GUserData_User_statistics_anime.serializer)
      ..add(GUserData_User_statistics_anime_genres.serializer)
      ..add(GUserData_User_statistics_manga.serializer)
      ..add(GUserData_User_statistics_manga_genres.serializer)
      ..add(GUserFragmentData.serializer)
      ..add(GUserFragmentData_avatar.serializer)
      ..add(GUserFragmentReq.serializer)
      ..add(GUserFragmentVars.serializer)
      ..add(GUserReq.serializer)
      ..add(GUserReviewsData.serializer)
      ..add(GUserReviewsData_Page.serializer)
      ..add(GUserReviewsData_Page_pageInfo.serializer)
      ..add(GUserReviewsData_Page_reviews.serializer)
      ..add(GUserReviewsData_Page_reviews_media.serializer)
      ..add(GUserReviewsData_Page_reviews_media_title.serializer)
      ..add(GUserReviewsData_Page_reviews_user.serializer)
      ..add(GUserReviewsData_Page_reviews_user_avatar.serializer)
      ..add(GUserReviewsReq.serializer)
      ..add(GUserReviewsVars.serializer)
      ..add(GUserSort.serializer)
      ..add(GUserStaffNameLanguage.serializer)
      ..add(GUserStatisticsSort.serializer)
      ..add(GUserStatsData.serializer)
      ..add(GUserStatsData_User.serializer)
      ..add(GUserStatsData_User_statistics.serializer)
      ..add(GUserStatsData_User_statistics_anime.serializer)
      ..add(GUserStatsData_User_statistics_anime_countries.serializer)
      ..add(GUserStatsData_User_statistics_anime_formats.serializer)
      ..add(GUserStatsData_User_statistics_anime_lengths.serializer)
      ..add(GUserStatsData_User_statistics_anime_releaseYears.serializer)
      ..add(GUserStatsData_User_statistics_anime_scores.serializer)
      ..add(GUserStatsData_User_statistics_anime_startYears.serializer)
      ..add(GUserStatsData_User_statistics_anime_statuses.serializer)
      ..add(GUserStatsReq.serializer)
      ..add(GUserStatsVars.serializer)
      ..add(GUserTitleLanguage.serializer)
      ..add(GUserVars.serializer)
      ..add(GViewerData.serializer)
      ..add(GViewerData_Viewer.serializer)
      ..add(GViewerData_Viewer_avatar.serializer)
      ..add(GViewerData_Viewer_mediaListOptions.serializer)
      ..add(GViewerData_Viewer_mediaListOptions_animeList.serializer)
      ..add(GViewerData_Viewer_options.serializer)
      ..add(GViewerData_Viewer_statistics.serializer)
      ..add(GViewerData_Viewer_statistics_anime.serializer)
      ..add(GViewerData_Viewer_statistics_manga.serializer)
      ..add(GViewerReq.serializer)
      ..add(GViewerVars.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GActivitiesData_Page_activities)]),
          () => new ListBuilder<GActivitiesData_Page_activities?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GActivityData_replies_activityReplies)
          ]),
          () => new ListBuilder<GActivityData_replies_activityReplies?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GCalendarScheduleData_Page_airingSchedules)
          ]),
          () => new ListBuilder<GCalendarScheduleData_Page_airingSchedules?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GCharacterData_Character_media_edges)
          ]),
          () => new ListBuilder<GCharacterData_Character_media_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GCharactersData_Media_characters_edges)
          ]),
          () => new ListBuilder<GCharactersData_Media_characters_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GCharactersData_Media_characters_edges_voiceActorRoles)
          ]),
          () => new ListBuilder<
              GCharactersData_Media_characters_edges_voiceActorRoles?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GCommentData_ThreadComment)]),
          () => new ListBuilder<GCommentData_ThreadComment?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GExploreData_nextSeason_media)]),
          () => new ListBuilder<GExploreData_nextSeason_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GExploreData_popular_media)]),
          () => new ListBuilder<GExploreData_popular_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GExploreData_recent_media)]),
          () => new ListBuilder<GExploreData_recent_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GExploreData_season_media)]),
          () => new ListBuilder<GExploreData_season_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GExploreData_trending_media)]),
          () => new ListBuilder<GExploreData_trending_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GForumOverviewData_new_threads)]),
          () => new ListBuilder<GForumOverviewData_new_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GForumOverviewData_new_threads_mediaCategories)
          ]),
          () => new ListBuilder<
              GForumOverviewData_new_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GForumOverviewData_new_threads_categories)
          ]),
          () => new ListBuilder<GForumOverviewData_new_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GForumOverviewData_recent_threads)
          ]),
          () => new ListBuilder<GForumOverviewData_recent_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GForumOverviewData_recent_threads_mediaCategories)
          ]),
          () => new ListBuilder<
              GForumOverviewData_recent_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GForumOverviewData_recent_threads_categories)
          ]),
          () =>
              new ListBuilder<GForumOverviewData_recent_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GForumOverviewData_release_threads)
          ]),
          () => new ListBuilder<GForumOverviewData_release_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GForumOverviewData_release_threads_mediaCategories)
          ]),
          () => new ListBuilder<
              GForumOverviewData_release_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GForumOverviewData_release_threads_categories)
          ]),
          () =>
              new ListBuilder<GForumOverviewData_release_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GForumsData_Page_threads)]),
          () => new ListBuilder<GForumsData_Page_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GForumsData_Page_threads_mediaCategories)
          ]),
          () => new ListBuilder<GForumsData_Page_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GForumsData_Page_threads_categories)
          ]),
          () => new ListBuilder<GForumsData_Page_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GHomeOverviewData_forums_threads)
          ]),
          () => new ListBuilder<GHomeOverviewData_forums_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GHomeOverviewData_forums_threads_mediaCategories)
          ]),
          () => new ListBuilder<
              GHomeOverviewData_forums_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GHomeOverviewData_forums_threads_categories)
          ]),
          () => new ListBuilder<GHomeOverviewData_forums_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GHomeOverviewData_list_mediaList)
          ]),
          () => new ListBuilder<GHomeOverviewData_list_mediaList?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GHomeOverviewData_releasing_media)
          ]),
          () => new ListBuilder<GHomeOverviewData_releasing_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GHomeOverviewData_releasing_media_airingSchedule_edges)
          ]),
          () => new ListBuilder<
              GHomeOverviewData_releasing_media_airingSchedule_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GHomeOverviewData_reviews_reviews)
          ]),
          () => new ListBuilder<GHomeOverviewData_reviews_reviews?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GLikesData_Page_likes)]),
          () => new ListBuilder<GLikesData_Page_likes?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GListGroupData_entries)]),
          () => new ListBuilder<GListGroupData_entries?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GMediaData_Media_characters_nodes)
          ]),
          () => new ListBuilder<GMediaData_Media_characters_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GMediaData_Media_recommendations_nodes)
          ]),
          () => new ListBuilder<GMediaData_Media_recommendations_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GMediaData_Media_relations_edges)
          ]),
          () => new ListBuilder<GMediaData_Media_relations_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GMediaData_Media_reviews_nodes)]),
          () => new ListBuilder<GMediaData_Media_reviews_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GMediaData_Media_staff_nodes)]),
          () => new ListBuilder<GMediaData_Media_staff_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GMediaData_Media_studios_nodes)]),
          () => new ListBuilder<GMediaData_Media_studios_nodes?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GMediaFormat)]),
          () => new ListBuilder<GMediaFormat?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GMediaSort)]),
          () => new ListBuilder<GMediaSort?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GMediaListData_MediaListCollection_lists)
          ]),
          () => new ListBuilder<GMediaListData_MediaListCollection_lists?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GMediaListData_MediaListCollection_lists_entries)
          ]),
          () => new ListBuilder<
              GMediaListData_MediaListCollection_lists_entries?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GMediaListSort)]),
          () => new ListBuilder<GMediaListSort?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GMediaRecommendationsData_Media_recommendations_nodes)
          ]),
          () => new ListBuilder<
              GMediaRecommendationsData_Media_recommendations_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GMediaStaffData_Media_staff_edges)
          ]),
          () => new ListBuilder<GMediaStaffData_Media_staff_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(GModRole)]),
          () => new ListBuilder<GModRole?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GNotificationOptionInput)]),
          () => new ListBuilder<GNotificationOptionInput?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GListActivityOptionInput)]),
          () => new ListBuilder<GListActivityOptionInput?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GNotificationType)]),
          () => new ListBuilder<GNotificationType?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GNotificationsData_Page_notifications)
          ]),
          () => new ListBuilder<GNotificationsData_Page_notifications?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GRecommendationSort)]),
          () => new ListBuilder<GRecommendationSort?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GRecommendationsData_Page_recommendations)
          ]),
          () => new ListBuilder<GRecommendationsData_Page_recommendations?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GReleasesListData_Page_media)]),
          () => new ListBuilder<GReleasesListData_Page_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GReleasesListData_Page_media_airingSchedule_edges)
          ]),
          () => new ListBuilder<
              GReleasesListData_Page_media_airingSchedule_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GReleasingMediaData_airingSchedule_edges)
          ]),
          () => new ListBuilder<GReleasingMediaData_airingSchedule_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GReviewsData_Media_reviews_nodes)
          ]),
          () => new ListBuilder<GReviewsData_Media_reviews_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GSearchData_Page_media)]),
          () => new ListBuilder<GSearchData_Page_media?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GSocialsData_followers_followers)
          ]),
          () => new ListBuilder<GSocialsData_followers_followers?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GSocialsData_following_following)
          ]),
          () => new ListBuilder<GSocialsData_following_following?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GStaffData_Staff_characterMedia_edges)
          ]),
          () => new ListBuilder<GStaffData_Staff_characterMedia_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GStaffData_Staff_characterMedia_edges_characters)
          ]),
          () => new ListBuilder<
              GStaffData_Staff_characterMedia_edges_characters?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GStaffData_Staff_staffMedia_edges)
          ]),
          () => new ListBuilder<GStaffData_Staff_staffMedia_edges?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GThreadData_comments_threadComments)
          ]),
          () => new ListBuilder<GThreadData_comments_threadComments?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GThreadData_thread_mediaCategories)
          ]),
          () => new ListBuilder<GThreadData_thread_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GThreadData_thread_categories)]),
          () => new ListBuilder<GThreadData_thread_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GThreadFragmentData_mediaCategories)
          ]),
          () => new ListBuilder<GThreadFragmentData_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GThreadFragmentData_categories)]),
          () => new ListBuilder<GThreadFragmentData_categories?>())
      ..addBuilderFactory(
          const FullType(
              BuiltList, const [const FullType.nullable(GThreadSort)]),
          () => new ListBuilder<GThreadSort?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GThreadsData_Page_threads)]),
          () => new ListBuilder<GThreadsData_Page_threads?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GThreadsData_Page_threads_mediaCategories)
          ]),
          () => new ListBuilder<GThreadsData_Page_threads_mediaCategories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GThreadsData_Page_threads_categories)
          ]),
          () => new ListBuilder<GThreadsData_Page_threads_categories?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserActivitiesData_Page_activities)
          ]),
          () => new ListBuilder<GUserActivitiesData_Page_activities?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserData_User_favourites_anime_nodes)
          ]),
          () => new ListBuilder<GUserData_User_favourites_anime_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserData_User_favourites_manga_nodes)
          ]),
          () => new ListBuilder<GUserData_User_favourites_manga_nodes?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserData_User_statistics_anime_genres)
          ]),
          () => new ListBuilder<GUserData_User_statistics_anime_genres?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserData_User_statistics_manga_genres)
          ]),
          () => new ListBuilder<GUserData_User_statistics_manga_genres?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GUserReviewsData_Page_reviews)]),
          () => new ListBuilder<GUserReviewsData_Page_reviews?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_formats)
          ]),
          () =>
              new ListBuilder<GUserStatsData_User_statistics_anime_formats?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_statuses)
          ]),
          () =>
              new ListBuilder<GUserStatsData_User_statistics_anime_statuses?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(GUserStatsData_User_statistics_anime_scores)
          ]),
          () => new ListBuilder<GUserStatsData_User_statistics_anime_scores?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_lengths)
          ]),
          () =>
              new ListBuilder<GUserStatsData_User_statistics_anime_lengths?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_releaseYears)
          ]),
          () => new ListBuilder<
              GUserStatsData_User_statistics_anime_releaseYears?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_startYears)
          ]),
          () => new ListBuilder<
              GUserStatsData_User_statistics_anime_startYears?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [
            const FullType.nullable(
                GUserStatsData_User_statistics_anime_countries)
          ]),
          () => new ListBuilder<
              GUserStatsData_User_statistics_anime_countries?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GGenreCollectionData_tags)]),
          () => new ListBuilder<GGenreCollectionData_tags?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GMediaData_Media_tags)]),
          () => new ListBuilder<GMediaData_Media_tags?>())
      ..addBuilderFactory(
          const FullType(BuiltList,
              const [const FullType.nullable(GMediaData_Media_externalLinks)]),
          () => new ListBuilder<GMediaData_Media_externalLinks?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(String)]),
          () => new ListBuilder<String?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(double)]),
          () => new ListBuilder<double?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType.nullable(int)]),
          () => new ListBuilder<int?>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
