.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction;
.super Ljava/lang/Object;
.source "NavBarStoreAction.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;,
        Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;,
        Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;,
        Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;,
        Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


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

.field private final canMove:Ljava/lang/Boolean;
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

.field private final navbarTransitionMode:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private navbarVisibility:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final navigationMode:Ljava/lang/Integer;
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

.field private final supportPhoneProvider:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private themeExist:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->Companion:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 9
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    move-object v1, p2

    .line 10
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->nightMode:Ljava/lang/Boolean;

    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->darkIntensity:Ljava/lang/Float;

    move-object v1, p4

    .line 12
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarIconHint:Ljava/lang/Integer;

    move-object v1, p5

    .line 13
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->remoteViewContainer:Ljava/util/List;

    move-object v1, p6

    .line 14
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->contextualButtonVisible:Ljava/lang/Boolean;

    move-object v1, p7

    .line 15
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navigationMode:Ljava/lang/Integer;

    move-object v1, p8

    .line 16
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    move-object v1, p9

    .line 17
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarTransitionMode:Ljava/lang/Integer;

    move-object v1, p10

    .line 18
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureTarget:Ljava/lang/Integer;

    move-object v1, p11

    .line 19
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDistanceX:Ljava/lang/Integer;

    move-object v1, p12

    .line 20
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDistanceY:Ljava/lang/Integer;

    move-object v1, p13

    .line 21
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDuration:Ljava/lang/Long;

    move-object/from16 v1, p14

    .line 22
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->recentEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p15

    .line 23
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->homeEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 24
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->backEnabled:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    .line 25
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->sPayVisible:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    .line 26
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->canMove:Ljava/lang/Boolean;

    move-object/from16 v1, p19

    .line 27
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->supportPhoneProvider:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    .line 28
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->themeExist:Ljava/lang/Boolean;

    move-object/from16 v1, p21

    .line 29
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->a11yClickable:Ljava/lang/Boolean;

    move-object/from16 v1, p22

    .line 30
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->a11yLongClickable:Ljava/lang/Boolean;

    move-object/from16 v1, p23

    .line 31
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarVisibility:Ljava/lang/Integer;

    move-object/from16 v1, p24

    .line 32
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gameToolsShowing:Ljava/lang/Boolean;

    move-object/from16 v1, p25

    .line 33
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->hardKeyIntentPolicy:Ljava/lang/Boolean;

    move-object/from16 v1, p26

    .line 34
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-object/from16 v1, p27

    .line 35
    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->displayId:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;)V
    .locals 28
    .param p1    # Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const-string v1, "builder"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getType()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getNightMode()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getDarkIntensity()Ljava/lang/Float;

    move-result-object v3

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getNavbarIconHint()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getRemoteViewContainer()Ljava/util/List;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getContextualButtonVisible()Ljava/lang/Boolean;

    move-result-object v6

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getNavigationMode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getRemoteViewShortcut()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getNavbarTransitionMode()Ljava/lang/Integer;

    move-result-object v9

    .line 91
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getGestureTarget()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getGestureDistanceX()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getGestureDistanceY()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getGestureDuration()Ljava/lang/Long;

    move-result-object v13

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getRecentEnabled()Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getHomeEnabled()Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v15, v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getBackEnabled()Ljava/lang/Boolean;

    move-result-object v16

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getSPayVisible()Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getCanMove()Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getSupportPhoneProvider()Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getThemeExist()Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getA11yClickable()Ljava/lang/Boolean;

    move-result-object v21

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getA11yLongClickable()Ljava/lang/Boolean;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getNavbarVisibility()Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getGameToolsShowing()Ljava/lang/Boolean;

    move-result-object v24

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getHardKeyIntentPolicy()Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Builder;->getDisplayId()Ljava/lang/Integer;

    move-result-object v27

    .line 88
    invoke-direct/range {v0 .. v27}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getA11yClickable()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 29
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->a11yClickable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getA11yLongClickable()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 30
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->a11yLongClickable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getBackEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 24
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->backEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getCanMove()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->canMove:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getContextualButtonVisible()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 14
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->contextualButtonVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getDarkIntensity()Ljava/lang/Float;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 11
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->darkIntensity:Ljava/lang/Float;

    return-object p0
.end method

.method public final getDisplayId()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 35
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->displayId:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGameToolsShowing()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 32
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gameToolsShowing:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getGestureDistanceX()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 19
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDistanceX:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGestureDistanceY()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 20
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDistanceY:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGestureDuration()Ljava/lang/Long;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 21
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureDuration:Ljava/lang/Long;

    return-object p0
.end method

.method public final getGestureTarget()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 18
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->gestureTarget:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getHardKeyIntentPolicy()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 33
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->hardKeyIntentPolicy:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getHomeEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->homeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getNavbarIconHint()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 12
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarIconHint:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavbarTransitionMode()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarTransitionMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavbarVisibility()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 31
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navbarVisibility:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNavigationMode()Ljava/lang/Integer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->navigationMode:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getNightMode()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->nightMode:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->oneHandModeInfo:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    return-object p0
.end method

.method public final getRecentEnabled()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 22
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->recentEnabled:Ljava/lang/Boolean;

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

    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->remoteViewContainer:Ljava/util/List;

    return-object p0
.end method

.method public final getRemoteViewShortcut()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 16
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->remoteViewShortcut:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    return-object p0
.end method

.method public final getSPayVisible()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->sPayVisible:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getSupportPhoneProvider()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->supportPhoneProvider:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getThemeExist()Ljava/lang/Boolean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 28
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->themeExist:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final getType()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 9
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->type:Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    return-object p0
.end method
