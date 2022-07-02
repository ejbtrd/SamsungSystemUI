.class public Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;,
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;,
        Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;
    }
.end annotation


# instance fields
.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

.field private mInflateSynchronously:Z

.field private final mIsMediaInQS:Z

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

.field private final mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;


# direct methods
.method public static synthetic $r8$lambda$SXVeuLyJ4X1scXD2Vd_j4yCO-og(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$freeNotificationView$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZBiH4cIZtXbcvIGLh-AFllIqDjY(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$freeNotificationView$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvxHep_vJ06q0CjRgG52nsthcTw(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$freeNotificationView$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uP4oo5Zt-a9n7b08dEngn6agX_o(Ljava/util/HashMap;)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$apply$4(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zpYs0b0FTypZ4lHucqHILaQ-_rc(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->lambda$freeNotificationView$3(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/media/MediaFeatureFlag;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    .line 98
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    .line 101
    invoke-virtual {p4}, Lcom/android/systemui/media/MediaFeatureFlag;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsMediaInQS:Z

    .line 102
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 103
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 78
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    return-void
.end method

.method static synthetic access$1700(ILandroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 0

    .line 78
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 0

    .line 78
    invoke-static/range {p0 .. p6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 0

    .line 78
    invoke-static/range {p0 .. p8}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method private static apply(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)Landroid/os/CancellationSignal;
    .locals 23

    move-object/from16 v15, p2

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    .line 352
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v12

    .line 353
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v11

    .line 354
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    and-int/lit8 v0, p3, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 359
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 360
    invoke-interface {v14, v13, v8}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 359
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    .line 361
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;

    invoke-direct {v7, v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 374
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v17

    .line 375
    invoke-virtual {v12, v9}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v19, v7

    move-object/from16 v7, p6

    move/from16 v8, v16

    move-object/from16 v9, p7

    move-object/from16 v16, v10

    move-object/from16 v10, p8

    move-object/from16 v21, v11

    move-object v11, v12

    move-object/from16 v22, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    .line 372
    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    goto :goto_0

    :cond_0
    move-object/from16 v16, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    :goto_0
    and-int/lit8 v0, p3, 0x2

    const/4 v15, 0x2

    if-eqz v0, :cond_1

    .line 382
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    move-object/from16 v14, p4

    move-object/from16 v13, p5

    .line 385
    invoke-interface {v14, v13, v15}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 384
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    const/4 v12, 0x1

    xor-int/lit8 v8, v0, 0x1

    .line 386
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;

    move-object/from16 v10, p2

    invoke-direct {v11, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 399
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v17

    move-object/from16 v9, v22

    .line 400
    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v19, v11

    move-object/from16 v11, v22

    move/from16 v20, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    .line 397
    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    goto :goto_1

    :cond_1
    const/16 v20, 0x1

    :goto_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 408
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 410
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/4 v1, 0x4

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    .line 411
    invoke-interface {v15, v14, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 410
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 412
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;

    move-object/from16 v12, p2

    invoke-direct {v13, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 425
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v22

    const/4 v0, 0x2

    .line 426
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    .line 423
    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    :cond_2
    and-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_3

    .line 435
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    const/16 v1, 0x8

    move-object/from16 v15, p4

    move-object/from16 v14, p5

    .line 436
    invoke-interface {v15, v14, v1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->getCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 435
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    .line 437
    new-instance v13, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;

    move-object/from16 v12, p2

    invoke-direct {v13, v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    .line 450
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v17

    move-object/from16 v11, v21

    const/4 v0, 0x0

    .line 451
    invoke-virtual {v11, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getVisibleWrapper(I)Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;

    move-result-object v18

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v12, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    .line 448
    invoke-static/range {v0 .. v15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V

    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v16

    move-object/from16 v4, p8

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 456
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    .line 458
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    .line 459
    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda0;

    move-object/from16 v2, v16

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda0;-><init>(Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object v0
.end method

.method static applyRemoteView(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;IILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;)V
    .locals 19
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Z",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "II",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            "Z",
            "Landroid/widget/RemoteViews$InteractionHandler;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentView;",
            "Landroid/view/View;",
            "Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v15, p9

    move-object/from16 v14, p14

    .line 482
    invoke-virtual/range {p15 .. p15}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz p1, :cond_1

    if-eqz p8, :cond_0

    .line 486
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v12, p11

    invoke-virtual {v13, v0, v12, v15}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 490
    invoke-virtual {v0, v1}, Landroid/view/View;->setIsRootNamespace(Z)V

    move-object/from16 v4, p15

    .line 491
    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;->setResultView(Landroid/view/View;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v11, p12

    invoke-virtual {v13, v0, v11, v15}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;)V

    .line 497
    invoke-virtual/range {p13 .. p13}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->onReinflated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 500
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    move-object/from16 v10, p10

    invoke-static {v14, v0, v1, v10}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V

    .line 503
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    move-object/from16 v10, p10

    move-object/from16 v12, p11

    move-object/from16 v11, p12

    move-object/from16 v4, p15

    .line 507
    new-instance v17, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;

    move-object/from16 v1, v17

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v5, p13

    move-object/from16 v6, p14

    move/from16 v7, p4

    move-object/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p10

    move-object/from16 v12, p6

    move-object/from16 v18, v13

    move-object/from16 v13, p12

    move-object/from16 v14, v18

    move-object/from16 v15, p11

    move-object/from16 v16, p9

    invoke-direct/range {v1 .. v16}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$5;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$ApplyCallback;Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;Ljava/util/HashMap;ILcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;Landroid/widget/RemoteViews;Lcom/android/systemui/statusbar/notification/row/NotificationContentView;Landroid/widget/RemoteViews$InteractionHandler;)V

    if-eqz p8, :cond_2

    .line 580
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v2, p11

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    goto :goto_1

    .line 587
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    move-object/from16 v0, v18

    move-object/from16 v2, p12

    move-object/from16 v3, p0

    move-object/from16 v4, v17

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;)Landroid/os/CancellationSignal;

    move-result-object v0

    .line 594
    :goto_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, p14

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static canReapplyRemoteView(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 769
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 771
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 772
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 773
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->hasFlags(I)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private cancelContentViewFrees(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 2

    and-int/lit8 p0, p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_0
    and-int/lit8 p0, p2, 0x2

    if-eqz p0, :cond_1

    .line 266
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_1
    and-int/lit8 p0, p2, 0x4

    if-eqz p0, :cond_2

    .line 269
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_2
    and-int/lit8 p0, p2, 0x8

    if-eqz p0, :cond_3

    .line 272
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->removeContentInactiveRunnable(I)V

    :cond_3
    return-void
.end method

.method private static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 754
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0

    .line 756
    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    return-object p0
.end method

.method private static createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    .line 739
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object p0

    .line 745
    invoke-static {p0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static createRemoteViews(ILandroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 2

    .line 310
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 313
    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$102(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_0
    and-int/lit8 p3, p0, 0x2

    if-eqz p3, :cond_1

    .line 317
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createExpandedView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$202(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_1
    and-int/lit8 p3, p0, 0x4

    if-eqz p3, :cond_2

    .line 321
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$302(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    :cond_2
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_4

    .line 326
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isPersona()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 327
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-nez p0, :cond_3

    .line 328
    sget-object p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->INSTANCE:Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;

    .line 329
    invoke-virtual {p0, p6, p5}, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->makeKnoxNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object p0

    .line 328
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$702(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->makePublicContentView(Z)Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$702(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 335
    :cond_4
    :goto_0
    iput-object p5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->packageContext:Landroid/content/Context;

    const/4 p0, 0x0

    .line 336
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$802(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    const/4 p0, 0x1

    .line 337
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$902(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method private static finishIfDone(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Ljava/util/HashMap;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;",
            "I",
            "Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ")Z"
        }
    .end annotation

    .line 617
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 618
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    .line 619
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v1

    .line 620
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_12

    and-int/lit8 p3, p1, 0x1

    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 623
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 625
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1000(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 627
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 626
    invoke-interface {p2, p5, v3, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 628
    :cond_0
    invoke-interface {p2, p5, v3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 632
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 631
    invoke-interface {p2, p5, v3, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    .line 637
    :cond_1
    :goto_0
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 638
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v4

    .line 639
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 636
    invoke-static {p3, v4, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p3

    .line 640
    invoke-virtual {p6, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsCustomNotification(Z)V

    :cond_2
    and-int/lit8 p3, p1, 0x2

    const/4 v4, 0x0

    if-eqz p3, :cond_8

    .line 645
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    const/4 v5, 0x2

    if-eqz p3, :cond_3

    .line 646
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 648
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 647
    invoke-interface {p2, p5, v5, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_1

    .line 649
    :cond_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-nez p3, :cond_4

    .line 650
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 651
    invoke-interface {p2, p5, v5}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_1

    .line 652
    :cond_4
    invoke-interface {p2, p5, v5}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 654
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 653
    invoke-interface {p2, p5, v5, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    .line 656
    :cond_5
    :goto_1
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 658
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p3

    .line 657
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    goto :goto_2

    .line 660
    :cond_6
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    .line 662
    :goto_2
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {p6, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandable(Z)V

    .line 667
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 668
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v2

    .line 669
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 666
    invoke-static {p3, v2, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p3

    .line 670
    invoke-virtual {p6, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsCustomBigNotification(Z)V

    :cond_8
    and-int/lit8 p3, p1, 0x4

    if-eqz p3, :cond_d

    .line 675
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    const/4 v2, 0x4

    if-eqz p3, :cond_9

    .line 676
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 678
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 677
    invoke-interface {p2, p5, v2, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_3

    .line 679
    :cond_9
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-nez p3, :cond_a

    .line 680
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 681
    invoke-interface {p2, p5, v2}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    goto :goto_3

    .line 682
    :cond_a
    invoke-interface {p2, p5, v2}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 684
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    .line 683
    invoke-interface {p2, p5, v2, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    .line 686
    :cond_b
    :goto_3
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p3

    if-eqz p3, :cond_c

    .line 688
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$600(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object p3

    .line 687
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    goto :goto_4

    .line 690
    :cond_c
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    .line 696
    :goto_4
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    .line 697
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    .line 698
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 695
    invoke-static {p3, v2, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p3

    .line 699
    invoke-virtual {p6, p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsCustomHeadsUpNotification(Z)V

    .line 703
    :cond_d
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setInflatedSmartReplyState(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)V

    const/16 p3, 0x8

    and-int/2addr p1, p3

    if-eqz p1, :cond_10

    .line 707
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 708
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$1300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 710
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 709
    invoke-interface {p2, p5, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    goto :goto_5

    .line 711
    :cond_e
    invoke-interface {p2, p5, p3}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->hasCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 713
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$700(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object p1

    .line 712
    invoke-interface {p2, p5, p3, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->putCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ILandroid/widget/RemoteViews;)V

    .line 717
    :cond_f
    :goto_5
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz p1, :cond_10

    .line 719
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 720
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p2

    .line 721
    invoke-virtual {p5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object p3, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 718
    invoke-static {p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z

    move-result p1

    .line 722
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsCustomPublicNotification(Z)V

    .line 727
    :cond_10
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$800(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    .line 728
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$900(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    if-eqz p4, :cond_11

    .line 730
    invoke-interface {p4, p5}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_11
    return v3

    :cond_12
    return v2
.end method

.method private freeNotificationView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1

    const/16 v1, 0x8

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p3

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p3, v2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p3

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p3, v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p3

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->performWhenContentInactive(ILjava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private static handleInflationError(Ljava/util/HashMap;Ljava/lang/Exception;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/CancellationSignal;",
            ">;",
            "Ljava/lang/Exception;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;",
            ")V"
        }
    .end annotation

    .line 600
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 601
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda5;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    if-eqz p3, :cond_0

    .line 603
    invoke-interface {p3, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;->handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private static inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 11

    move-object v0, p0

    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$100(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 287
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$200(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit8 v5, p1, 0x4

    if-eqz v5, :cond_2

    .line 289
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$300(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v5

    if-eqz v5, :cond_2

    move v2, v3

    :cond_2
    if-nez v1, :cond_4

    if-nez v4, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, p2

    move-object/from16 v3, p6

    goto :goto_3

    :cond_4
    :goto_2
    move-object v1, p2

    move-object/from16 v3, p6

    .line 291
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;->inflateSmartReplyState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$402(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    :goto_3
    if-eqz v4, :cond_5

    .line 296
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object v10

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object v8, p2

    move-object/from16 v9, p5

    .line 294
    invoke-interface/range {v5 .. v10}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$502(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_5
    if-eqz v2, :cond_6

    .line 301
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$400(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object v10

    move-object/from16 v5, p6

    move-object v6, p3

    move-object v7, p4

    move-object v8, p2

    move-object/from16 v9, p5

    .line 299
    invoke-interface/range {v5 .. v10}, Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;->inflateSmartReplyViewHolder(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;->access$602(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;

    :cond_6
    return-object v0
.end method

.method private static isCustomNotification(Landroid/app/Notification;Landroid/view/View;Landroid/widget/RemoteViews;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    .line 999
    :goto_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->isDecoratedNotification(Landroid/app/Notification;)Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_2

    .line 1001
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p2, 0x10205b5

    if-eq p0, p2, :cond_3

    .line 1002
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x10203f9

    if-eq p0, p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private static isDecoratedNotification(Landroid/app/Notification;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .line 1009
    invoke-virtual {p0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object p0

    .line 1010
    const-class v0, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;

    .line 1011
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$apply$4(Ljava/util/HashMap;)V
    .locals 1

    .line 460
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$$ExternalSyntheticLambda5;

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$freeNotificationView$0(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 225
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/4 p1, 0x1

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method private synthetic lambda$freeNotificationView$1(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/4 p1, 0x2

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method private synthetic lambda$freeNotificationView$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 236
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpChild(Landroid/view/View;)V

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/4 v0, 0x4

    invoke-interface {p0, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    .line 238
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setHeadsUpInflatedSmartReplies(Lcom/android/systemui/statusbar/policy/InflatedSmartReplyViewHolder;)V

    return-void
.end method

.method private synthetic lambda$freeNotificationView$3(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 243
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    const/16 p1, 0x8

    invoke-interface {p0, p2, p1}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->removeCachedView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method


# virtual methods
.method public bindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 114
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 124
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getImageResolver()Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->preloadImages(Landroid/app/Notification;)V

    if-eqz p5, :cond_1

    .line 127
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    move-object/from16 v8, p1

    invoke-interface {v2, v8}, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;->clearCache(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_1
    move-object/from16 v8, p1

    :goto_0
    move-object/from16 v2, p2

    move/from16 v6, p3

    .line 131
    invoke-direct {v0, v2, v6}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->cancelContentViewFrees(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 133
    new-instance v15, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;

    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mConversationProcessor:Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;

    iget-boolean v11, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isLowPriority:Z

    iget-boolean v12, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v13, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 145
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getRemoteViewsOnClickHandler()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v1

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mIsMediaInQS:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mSmartReplyStateInflater:Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;

    const/16 v18, 0x0

    move-object v3, v15

    move/from16 v6, p3

    move-object/from16 v8, p1

    move-object/from16 v17, v10

    move-object/from16 v10, p2

    move v2, v14

    move-object/from16 v14, p6

    move-object/from16 v19, v15

    move-object v15, v1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v18}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;-><init>(Ljava/util/concurrent/Executor;ZILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationProcessor;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ZZZLcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;Landroid/widget/RemoteViews$InteractionHandler;ZLcom/android/systemui/statusbar/policy/SmartReplyStateInflater;Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$1;)V

    .line 148
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    new-array v0, v2, [Ljava/lang/Void;

    move-object/from16 v1, v19

    .line 149
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$AsyncInflationTask;->onPostExecute(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;)V

    goto :goto_1

    :cond_2
    move-object/from16 v1, v19

    .line 151
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method

.method public cancelBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 194
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->abortTask()V

    return-void
.end method

.method inflateNotificationViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;ZILandroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;
    .locals 21
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 165
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->isLowPriority:Z

    iget-boolean v4, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeight:Z

    iget-boolean v5, v1, Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$BindParams;->usesIncreasedHeadsUpHeight:Z

    move/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->createRemoteViews(ILandroid/app/Notification$Builder;ZZZLandroid/content/Context;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v6

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 174
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExistingSmartReplyState()Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;

    move-result-object v11

    move/from16 v7, p5

    move-object/from16 v8, p1

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    .line 172
    invoke-static/range {v6 .. v12}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->inflateSmartReplyViews(Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/InflatedSmartReplyState;Lcom/android/systemui/statusbar/policy/SmartReplyStateInflater;)Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;

    move-result-object v1

    .line 177
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mBgExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteViewCache:Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 185
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getRemoteViewsOnClickHandler()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v13, p4

    move-object v14, v1

    move/from16 v15, p5

    move-object/from16 v16, v2

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 177
    invoke-static/range {v12 .. v20}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->apply(Ljava/util/concurrent/Executor;ZLcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationProgress;ILcom/android/systemui/statusbar/notification/row/NotifRemoteViewCache;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/widget/RemoteViews$InteractionHandler;Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;)Landroid/os/CancellationSignal;

    return-object v1
.end method

.method public setInflateSynchronously(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 782
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->mInflateSynchronously:Z

    return-void
.end method

.method public unbindContent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    if-eqz p3, :cond_1

    and-int v1, p3, v0

    if-eqz v1, :cond_0

    .line 205
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;->freeNotificationView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    :cond_0
    not-int v1, v0

    and-int/2addr p3, v1

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
