.class public final Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;
.super Ljava/lang/Object;
.source "NotificationLaunchAnimatorController.kt"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationKey:Ljava/lang/String;

.field private final notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->Companion:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "notificationShadeWindowViewController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notificationListContainer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notification"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 48
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    const-string/jumbo p2, "notification.entry"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 49
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    return-void
.end method

.method private final applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    .line 156
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    return-void
.end method

.method private final removeHun(Z)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpUtil;->setNeedsHeadsUpDisappearAnimationAfterClick(Landroid/view/View;Z)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationKey:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->removeNotification(Ljava/lang/String;ZZ)Z

    return-void
.end method


# virtual methods
.method public createAnimatorState()Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 60
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getTopClippingStartLocation()I

    move-result v3

    const/4 v4, 0x1

    .line 63
    aget v5, v2, v4

    sub-int v5, v3, v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 64
    aget v6, v2, v4

    add-int v8, v6, v5

    const/4 v6, 0x0

    if-lez v5, :cond_0

    move v12, v6

    goto :goto_0

    .line 72
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundRadiusTop()F

    move-result v7

    move v12, v7

    .line 74
    :goto_0
    new-instance v14, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;

    .line 76
    aget v7, v2, v4

    add-int v9, v7, v0

    .line 77
    aget v10, v2, v1

    .line 78
    aget v0, v2, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    add-int v11, v0, v2

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->getCurrentBackgroundRadiusBottom()F

    move-result v13

    move-object v7, v14

    .line 74
    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;-><init>(IIIIFF)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationZ()F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartTranslationZ(F)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartNotificationTop(F)V

    .line 85
    invoke-virtual {v14, v5}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartRoundedTopClipping(I)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartClipTopAmount(I)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->getStartNotificationTop()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartNotificationTop(F)V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v0

    aget v0, v0, v4

    sub-int/2addr v3, v0

    .line 89
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 91
    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setParentStartRoundedTopClipping(I)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 94
    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setParentStartClipTopAmount(I)V

    if-eqz v0, :cond_1

    int-to-float v0, v0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p0

    sub-float/2addr v0, p0

    cmpl-float p0, v0, v6

    if-lez p0, :cond_1

    float-to-double v0, v0

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    invoke-virtual {v14, p0}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setStartClipTopAmount(I)V

    :cond_1
    return-object v14
.end method

.method public getLaunchContainer()Landroid/view/ViewGroup;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public onIntentStarted(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setExpandAnimationRunning(Z)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 114
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    :cond_0
    return-void
.end method

.method public onLaunchAnimationCancelled()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setExpandAnimationRunning(Z)V

    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    return-void
.end method

.method public onLaunchAnimationEnd(Z)V
    .locals 2

    .line 144
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 146
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 147
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationShadeWindowViewController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setExpandAnimationRunning(Z)V

    .line 148
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setExpandAnimationRunning(Z)V

    .line 149
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->removeHun(Z)V

    return-void
.end method

.method public onLaunchAnimationProgress(Lcom/android/systemui/animation/ActivityLaunchAnimator$State;FF)V
    .locals 1
    .param p1    # Lcom/android/systemui/animation/ActivityLaunchAnimator$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    check-cast p1, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;

    .line 165
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setProgress(F)V

    .line 166
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;->setLinearProgress(F)V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->applyParams(Lcom/android/systemui/statusbar/notification/ExpandAnimationParameters;)V

    return-void
.end method

.method public onLaunchAnimationStart(Z)V
    .locals 1

    .line 136
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setExpandAnimationRunning(Z)V

    .line 137
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setExpandingNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 139
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorController;->notification:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method

.method public setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "ignored"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
