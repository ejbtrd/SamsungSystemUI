.class final Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;
.super Ljava/lang/Object;
.source "NotificationRankingManager.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;-><init>(Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/statusbar/notification/NotificationEntryManagerLogger;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/notification/NotificationEntryManager$KeyguardEnvironment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    const-string v4, "a.sbn"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    const-string v5, "b.sbn"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v5

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v6

    const-string v7, "a"

    .line 88
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    const-string v7, "b"

    .line 89
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isColorizedForegroundService(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isImportantCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    .line 92
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isImportantCall(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v8

    .line 94
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v9, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v9

    .line 95
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v10, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v10

    .line 97
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v11, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    .line 98
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v12, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isImportantMedia(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v12

    .line 100
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v13

    .line 101
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManagerKt;->access$isSystemMax(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v14

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v15

    move/from16 v16, v5

    .line 104
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowHeadsUp()Z

    move-result v5

    move/from16 v17, v6

    .line 106
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v6, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    move/from16 v18, v7

    .line 107
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v7, v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$isHighPriority(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    move/from16 v19, v8

    .line 110
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->semPriority:I

    move/from16 v20, v8

    .line 111
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->semPriority:I

    .line 115
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    move-wide/from16 v21, v1

    .line 116
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v1

    const/16 v23, 0x0

    move-wide/from16 v24, v1

    if-eqz v9, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, v23

    :goto_0
    if-eqz v10, :cond_1

    const/16 v26, 0x1

    goto :goto_1

    :cond_1
    move/from16 v26, v23

    :goto_1
    if-nez v15, :cond_3

    if-nez v11, :cond_3

    if-nez v13, :cond_3

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v27, v23

    goto :goto_3

    :cond_3
    :goto_2
    const/16 v27, 0x1

    :goto_3
    if-nez v5, :cond_5

    if-nez v12, :cond_5

    if-nez v14, :cond_5

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v28, v23

    goto :goto_5

    :cond_5
    :goto_4
    const/16 v28, 0x1

    .line 124
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getMNotificationSortOrder$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)I

    move-result v1

    const/16 v29, -0x1

    move/from16 v30, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    if-eq v15, v5, :cond_6

    if-eqz v15, :cond_10

    goto/16 :goto_6

    :cond_6
    if-eqz v15, :cond_7

    .line 146
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getHeadsUpManager$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v1

    goto/16 :goto_7

    :cond_7
    move/from16 v1, v18

    move/from16 v2, v19

    if-eq v1, v2, :cond_8

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_8
    move/from16 v1, v20

    if-eq v1, v8, :cond_9

    if-le v1, v8, :cond_10

    goto :goto_6

    .line 153
    :cond_9
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getUsePeopleFiltering(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eq v9, v10, :cond_a

    .line 154
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$getPeopleNotificationIdentifier$p(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    move-result-object v0

    invoke-interface {v0, v9, v10}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->compareTo(II)I

    move-result v1

    goto/16 :goto_7

    :cond_a
    if-eq v11, v12, :cond_b

    if-eqz v11, :cond_10

    goto :goto_6

    :cond_b
    if-eq v13, v14, :cond_c

    if-eqz v13, :cond_10

    goto :goto_6

    :cond_c
    if-eq v6, v7, :cond_d

    .line 160
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v0

    mul-int/lit8 v1, v0, -0x1

    goto :goto_7

    :cond_d
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    sub-int v1, v0, v1

    goto :goto_7

    .line 162
    :cond_e
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-wide v0, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v1

    goto :goto_7

    :cond_f
    move/from16 v1, v20

    move-wide/from16 v2, v21

    if-eq v15, v5, :cond_11

    if-eqz v15, :cond_10

    :goto_6
    move/from16 v1, v29

    goto :goto_7

    :cond_10
    const/4 v1, 0x1

    goto :goto_7

    :cond_11
    if-eq v1, v8, :cond_12

    if-le v1, v8, :cond_10

    goto :goto_6

    :cond_12
    move/from16 v0, v26

    move/from16 v1, v30

    if-eq v1, v0, :cond_13

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_13
    move/from16 v1, v27

    move/from16 v0, v28

    if-eq v1, v0, :cond_14

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_14
    move-wide/from16 v0, v24

    .line 137
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v1

    goto :goto_7

    :cond_15
    move-wide/from16 v2, v21

    move-wide/from16 v0, v24

    .line 125
    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result v1

    :goto_7
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 82
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$rankingComparator$1;->compare(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    return p0
.end method
