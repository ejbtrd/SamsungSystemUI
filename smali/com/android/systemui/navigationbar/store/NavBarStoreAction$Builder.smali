.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
.super Ljava/lang/Object;
.source "NavBarStoreAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a11yClickable:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private a11yLongClickable:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private backEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private canMove:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private contextualButtonVisible:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private darkIntensity:Ljava/lang/Float;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private displayId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameToolsShowing:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gestureDistanceX:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gestureDistanceY:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gestureDuration:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gestureTarget:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hardKeyIntentPolicy:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private homeEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navbarIconHint:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navbarTransitionMode:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navbarVisibility:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navigationMode:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private nightMode:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recentEnabled:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remoteViewContainer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private sPayVisible:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private supportPhoneProvider:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private themeExist:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->nightMode:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->darkIntensity:Ljava/lang/Float;

    const/4 v1, -0x1

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarIconHint:Ljava/lang/Integer;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object v5, v2, v3

    .line 102
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->remoteViewContainer:Ljava/util/List;

    .line 103
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->contextualButtonVisible:Ljava/lang/Boolean;

    .line 104
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navigationMode:Ljava/lang/Integer;

    .line 106
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarTransitionMode:Ljava/lang/Integer;

    .line 107
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureTarget:Ljava/lang/Integer;

    .line 108
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceX:Ljava/lang/Integer;

    .line 109
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceY:Ljava/lang/Integer;

    const-wide/16 v1, 0x0

    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDuration:Ljava/lang/Long;

    .line 111
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->recentEnabled:Ljava/lang/Boolean;

    .line 112
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->homeEnabled:Ljava/lang/Boolean;

    .line 113
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->backEnabled:Ljava/lang/Boolean;

    .line 114
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->sPayVisible:Ljava/lang/Boolean;

    .line 115
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->canMove:Ljava/lang/Boolean;

    .line 116
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->supportPhoneProvider:Ljava/lang/Boolean;

    .line 117
    iput-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->themeExist:Ljava/lang/Boolean;

    .line 118
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yClickable:Ljava/lang/Boolean;

    .line 119
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yLongClickable:Ljava/lang/Boolean;

    .line 120
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarVisibility:Ljava/lang/Integer;

    .line 121
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gameToolsShowing:Ljava/lang/Boolean;

    .line 122
    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->hardKeyIntentPolicy:Ljava/lang/Boolean;

    .line 124
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->displayId:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 125
    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V

    return-object v0
.end method

.method public final getA11yClickable()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 118
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yClickable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getA11yLongClickable()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yLongClickable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getBackEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->backEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getCanMove()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->canMove:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getContextualButtonVisible()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 103
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->contextualButtonVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getDarkIntensity()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 100
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->darkIntensity:Ljava/lang/Float;

    return-object p0
.end method

.method public final getDisplayId()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 124
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->displayId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGameToolsShowing()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gameToolsShowing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getGestureDistanceX()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 108
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceX:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGestureDistanceY()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 109
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceY:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGestureDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 110
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getGestureTarget()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureTarget:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getHardKeyIntentPolicy()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->hardKeyIntentPolicy:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getHomeEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 112
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->homeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getNavbarIconHint()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 101
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarIconHint:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavbarTransitionMode()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 106
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarTransitionMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavbarVisibility()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavigationMode()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 104
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navigationMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNightMode()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->nightMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 123
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-object p0
.end method

.method public final getRecentEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->recentEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getRemoteViewContainer()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 102
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->remoteViewContainer:Ljava/util/List;

    return-object p0
.end method

.method public final getRemoteViewShortcut()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 105
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    return-object p0
.end method

.method public final getSPayVisible()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 114
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->sPayVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getSupportPhoneProvider()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->supportPhoneProvider:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getThemeExist()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->themeExist:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getType()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 98
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    return-object p0
.end method

.method public final setA11yClickable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 118
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yClickable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setA11yLongClickable(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 119
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->a11yLongClickable:Ljava/lang/Boolean;

    return-void
.end method

.method public final setBackEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 113
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->backEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setCanMove(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 115
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->canMove:Ljava/lang/Boolean;

    return-void
.end method

.method public final setContextualButtonVisible(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 103
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->contextualButtonVisible:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDarkIntensity(Ljava/lang/Float;)V
    .locals 0
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 100
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->darkIntensity:Ljava/lang/Float;

    return-void
.end method

.method public final setDisplayId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 124
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->displayId:Ljava/lang/Integer;

    return-void
.end method

.method public final setGameToolsShowing(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gameToolsShowing:Ljava/lang/Boolean;

    return-void
.end method

.method public final setGestureDistanceX(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 108
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceX:Ljava/lang/Integer;

    return-void
.end method

.method public final setGestureDistanceY(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 109
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDistanceY:Ljava/lang/Integer;

    return-void
.end method

.method public final setGestureDuration(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 110
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureDuration:Ljava/lang/Long;

    return-void
.end method

.method public final setGestureTarget(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 107
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->gestureTarget:Ljava/lang/Integer;

    return-void
.end method

.method public final setHardKeyIntentPolicy(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 122
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->hardKeyIntentPolicy:Ljava/lang/Boolean;

    return-void
.end method

.method public final setHomeEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 112
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->homeEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setNavbarIconHint(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 101
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarIconHint:Ljava/lang/Integer;

    return-void
.end method

.method public final setNavbarTransitionMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 106
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarTransitionMode:Ljava/lang/Integer;

    return-void
.end method

.method public final setNavbarVisibility(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 120
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navbarVisibility:Ljava/lang/Integer;

    return-void
.end method

.method public final setNavigationMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 104
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->navigationMode:Ljava/lang/Integer;

    return-void
.end method

.method public final setNightMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 99
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->nightMode:Ljava/lang/Boolean;

    return-void
.end method

.method public final setOneHandModeInfo(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;)V
    .locals 0
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 123
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-void
.end method

.method public final setRecentEnabled(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 111
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->recentEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public final setRemoteViewContainer(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->remoteViewContainer:Ljava/util/List;

    return-void
.end method

.method public final setRemoteViewShortcut(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;)V
    .locals 0
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 105
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    return-void
.end method

.method public final setSPayVisible(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 114
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->sPayVisible:Ljava/lang/Boolean;

    return-void
.end method

.method public final setSupportPhoneProvider(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 116
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->supportPhoneProvider:Ljava/lang/Boolean;

    return-void
.end method

.method public final setThemeExist(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->themeExist:Ljava/lang/Boolean;

    return-void
.end method

.method public final setType(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;)V
    .locals 0
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 98
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    return-void
.end method
