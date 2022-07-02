.class public Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
.super Ljava/lang/Object;
.source "NotificationRoundnessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;
    }
.end annotation


# instance fields
.field private mAnimatedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation
.end field

.field private mAppearFraction:F

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mExpanded:Z

.field private final mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mRoundingChangedCallback:Ljava/lang/Runnable;

.field private mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

.field private mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 58
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 64
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNumberOfBuckets()I

    move-result p2

    .line 65
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 66
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 67
    new-array v0, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 68
    new-array p2, p2, [Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method private getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, v0, :cond_1

    goto/16 :goto_0

    .line 189
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-nez v0, :cond_7

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isHeadsUpAnimatingAway()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 194
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz p2, :cond_3

    .line 195
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;->onKeyguardInStack()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    .line 196
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;->getFirstVisibleSectionInStack()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    .line 197
    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;->getFirstVisibleSectionInStack()Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eq p0, p1, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/android/systemui/R$dimen;->notification_corner_radius_small:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->notification_corner_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr p0, p1

    return p0

    :cond_3
    return v1

    .line 203
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    return v1

    .line 211
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    .line 214
    :cond_6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 215
    sget p1, Lcom/android/systemui/R$dimen;->notification_corner_radius_small:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sget p2, Lcom/android/systemui/R$dimen;->notification_corner_radius:I

    .line 216
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    div-float/2addr p1, p0

    return p1

    :cond_7
    :goto_0
    return v1
.end method

.method private handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    .line 278
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v4, p1, v2

    if-eqz p3, :cond_0

    .line 280
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v4

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 283
    array-length v6, p2

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, p2, v7

    if-ne v8, v4, :cond_2

    .line 285
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    if-eqz v6, :cond_1

    .line 286
    invoke-interface {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;->onKeyguardInStack()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    invoke-virtual {p0, v8, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    move v6, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_3
    if-nez v6, :cond_5

    .line 296
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    goto :goto_4

    :cond_4
    move v3, v1

    .line 295
    :goto_4
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move v3, v5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method private handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 9

    .line 247
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v4, p2, v2

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    .line 251
    array-length v6, p1

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_4

    aget-object v8, p1, v7

    if-eqz p3, :cond_0

    .line 253
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    goto :goto_2

    .line 254
    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v8

    :goto_2
    if-ne v8, v4, :cond_3

    .line 257
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isFirstInSection()Z

    move-result v6

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v7

    if-ne v6, v7, :cond_2

    .line 258
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isLastInSection()Z

    move-result v6

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v7

    if-eq v6, v7, :cond_1

    goto :goto_3

    :cond_1
    move v7, v1

    move v6, v5

    goto :goto_5

    :cond_2
    :goto_3
    move v6, v5

    goto :goto_4

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_4
    move v7, v6

    :goto_5
    if-eqz v6, :cond_5

    if-eqz v7, :cond_7

    .line 266
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_6

    .line 267
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v3

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    :cond_6
    move v3, v5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v3
.end method

.method private isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 115
    aget-object v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 129
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public setAnimatedChildren(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)V"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAnimatedChildren:Ljava/util/HashSet;

    return-void
.end method

.method public setExpanded(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 220
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mExpanded:Z

    .line 221
    iput p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mAppearFraction:F

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    .line 223
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_1
    return-void
.end method

.method public setOnRoundingChangedCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public setSectionStateProvider(Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mSectionStateProvider:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager$SectionStateProvider;

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTrackedHeadsUp:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 315
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method setViewsAffectedBySwipe(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    return-void
.end method

.method public updateRoundedChildren([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 229
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v4, v3, v1

    aput-object v4, v2, v1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 232
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    aput-object v2, v3, v1

    .line 233
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v1

    or-int/2addr v1, v0

    .line 236
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v3, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleRemovedOldViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v3

    or-int/2addr v1, v3

    .line 237
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpFirstInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v3, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result v2

    or-int/2addr v1, v2

    .line 238
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mTmpLastInSectionViews:[Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0, p1, v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->handleAddedNewViews([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;[Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p1

    or-int/2addr p1, v1

    if-eqz p1, :cond_1

    .line 240
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public updateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mRoundingChangedCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method updateViewWithoutCallback(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewBeforeSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->mViewAfterSwipedView:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 98
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v2

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->getRoundness(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)F

    move-result v3

    .line 101
    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTopRoundness(FZ)Z

    move-result v2

    .line 102
    invoke-virtual {p1, v3, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setBottomRoundness(FZ)Z

    move-result p2

    .line 104
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isFirstInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v3

    .line 105
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->isLastInSection(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result p0

    .line 107
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setFirstInSection(Z)V

    .line 108
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setLastInSection(Z)V

    if-nez v3, :cond_1

    if-eqz p0, :cond_3

    :cond_1
    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method
