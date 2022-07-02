.class public Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;
.super Ljava/lang/Object;
.source "SubscreenSubRoomNotificaitonAnimatorManager.java"


# instance fields
.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->init()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-void
.end method

.method private init()V
    .locals 1

    .line 34
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 35
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method


# virtual methods
.method public alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0, p5, p6}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->getViewAlphaAnimator(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;FF)Landroid/animation/Animator;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 111
    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 127
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public createAlphaAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 162
    sget-object p0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 94
    sget-object p0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, p0, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method public dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJLcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 2

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    int-to-float v0, v0

    .line 61
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 62
    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->getSubscreenNotificationInfo()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p6

    invoke-virtual {p6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p6

    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p6

    if-nez p6, :cond_0

    const/4 v0, 0x0

    :cond_0
    const/4 p6, 0x0

    .line 67
    invoke-virtual {p0, p1, v0, p6}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object p1

    .line 68
    sget-object p6, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 69
    invoke-virtual {p1, p4, p5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    if-lez p3, :cond_1

    int-to-long p3, p3

    .line 72
    invoke-virtual {p1, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 75
    :cond_1
    new-instance p3, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 90
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public getViewAlphaAnimator(Landroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;FF)Landroid/animation/Animator;
    .locals 0

    .line 167
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->createAlphaAnimation(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {p0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p0
.end method

.method public getViewTranslationAnimator(Landroid/view/View;FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 0

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p0, p3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-object p0
.end method

.method public performDismissAllAnimations(Ljava/lang/Runnable;)V
    .locals 10

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getRecyclerViewItemHolderArraySize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x8c

    const/16 v2, 0xb4

    move v9, v2

    :goto_0
    if-ltz v0, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getRecyclerViewItemHolderArray()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v4, p1

    goto :goto_1

    :cond_0
    move-object v4, v2

    .line 50
    :goto_1
    iget-object v3, v8, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-wide/16 v6, 0x104

    move-object v2, p0

    move v5, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJLcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V

    const/16 v2, 0x32

    add-int/lit8 v1, v1, -0xa

    .line 51
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v9, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public replyButtonAnimated(Landroid/view/View;Ljava/lang/Runnable;JFFFF)V
    .locals 6

    .line 132
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    const/4 v4, 0x1

    aput p6, v2, v4

    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 133
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v5, v1, [F

    aput p5, v5, v3

    aput p6, v5, v4

    invoke-static {p1, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p5

    .line 134
    sget-object p6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v2, v1, [F

    aput p7, v2, v3

    aput p8, v2, v4

    invoke-static {p1, p6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 135
    sget-object p6, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 137
    new-instance p6, Landroid/animation/AnimatorSet;

    invoke-direct {p6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 p7, 0x3

    new-array p7, p7, [Landroid/animation/Animator;

    aput-object v0, p7, v3

    aput-object p5, p7, v4

    aput-object p1, p7, v1

    .line 138
    invoke-virtual {p6, p7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 139
    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const-wide/16 p3, 0x0

    .line 140
    invoke-virtual {p6, p3, p4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 142
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;Ljava/lang/Runnable;)V

    invoke-virtual {p6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 158
    invoke-virtual {p6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
