.class public final Lcom/android/systemui/media/KeyguardMediaController;
.super Ljava/lang/Object;
.source "KeyguardMediaController.kt"


# instance fields
.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mediaHost:Lcom/android/systemui/media/MediaHost;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private splitShadeContainer:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useSplitShade:Z

.field private visibilityChangedListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/media/MediaHost;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/FeatureFlags;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mediaHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifLockscreenUserManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/media/KeyguardMediaController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/media/KeyguardMediaController;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/media/KeyguardMediaController;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 50
    iput-object p5, p0, Lcom/android/systemui/media/KeyguardMediaController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 51
    iput-object p6, p0, Lcom/android/systemui/media/KeyguardMediaController;->context:Landroid/content/Context;

    .line 56
    new-instance p2, Lcom/android/systemui/media/KeyguardMediaController$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/KeyguardMediaController$1;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-interface {p3, p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 61
    new-instance p2, Lcom/android/systemui/media/KeyguardMediaController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/media/KeyguardMediaController$2;-><init>(Lcom/android/systemui/media/KeyguardMediaController;)V

    invoke-interface {p7, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 68
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    const/4 p2, 0x1

    .line 69
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->setFalsingProtectionNeeded(Z)V

    const/4 p2, 0x2

    .line 73
    invoke-virtual {p1, p2}, Lcom/android/systemui/media/MediaHost;->init(I)V

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->updateResources()V

    return-void
.end method

.method public static final synthetic access$updateResources(Lcom/android/systemui/media/KeyguardMediaController;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->updateResources()V

    return-void
.end method

.method public static synthetic getUseSplitShade$annotations()V
    .locals 0

    return-void
.end method

.method private final reattachHostView()V
    .locals 5

    .line 146
    iget-boolean v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShade:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    goto :goto_0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->splitShadeContainer:Landroid/view/ViewGroup;

    .line 151
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v3, v2

    goto :goto_1

    .line 153
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    const/4 v4, 0x1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 154
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    move-object v1, v2

    goto :goto_3

    .line 156
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_9

    .line 158
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    .line 159
    :cond_6
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    :cond_7
    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 161
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->mediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_9
    :goto_5
    return-void
.end method

.method private final updateResources()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->featureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/media/KeyguardMediaController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/KeyguardMediaController;->setUseSplitShade(Z)V

    return-void
.end method


# virtual methods
.method public final getSinglePaneContainer()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/systemui/media/KeyguardMediaController;->singlePaneContainer:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-object p0
.end method

.method public final refreshMediaPosition()V
    .locals 0

    return-void
.end method

.method public final setUseSplitShade(Z)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShade:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->useSplitShade:Z

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/media/KeyguardMediaController;->reattachHostView()V

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    return-void
.end method

.method public final setVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/android/systemui/media/KeyguardMediaController;->visibilityChangedListener:Lkotlin/jvm/functions/Function1;

    return-void
.end method
