.class public final Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;
.super Ljava/lang/Object;
.source "SmartspaceTransitionController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lockscreenSmartspace:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final smartspaceDestinationBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final smartspaceOriginBounds:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;-><init>(Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;)V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceDestinationBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final createExternalInterface()Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->ISmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$ISmartspaceTransitionController$1;

    return-object p0
.end method

.method public final getLauncherSmartspace()Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 45
    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    return-object p0
.end method

.method public final getLockscreenSmartspace()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->lockscreenSmartspace:Landroid/view/View;

    return-object p0
.end method

.method public final isSmartspaceTransitionPossible()Z
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object p0

    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    move p0, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    .line 133
    :goto_1
    sget-object v1, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->Companion:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController$Companion;->isLauncherUnderneath()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public final prepareForUnlockTransition()V
    .locals 3

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->updateLauncherSmartSpaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 83
    iget-object v1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->smartspaceDestinationBounds:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceState;->getBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    neg-int v0, v0

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->getLockscreenSmartspace()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    neg-int p0, p0

    .line 85
    invoke-virtual {v1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    return-void
.end method

.method public final setLauncherSmartspace(Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 45
    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    return-void
.end method

.method public final setLockscreenSmartspace(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 47
    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->lockscreenSmartspace:Landroid/view/View;

    return-void
.end method

.method public final setMLauncherSmartspaceState(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V
    .locals 0
    .param p1    # Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 53
    iput-object p1, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->mLauncherSmartspaceState:Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    return-void
.end method

.method public final updateLauncherSmartSpaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->launcherSmartspace:Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/shared/system/smartspace/ISmartspaceCallback;->getSmartspaceState()Lcom/android/systemui/shared/system/smartspace/SmartspaceState;

    move-result-object v0

    .line 75
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->setMLauncherSmartspaceState(Lcom/android/systemui/shared/system/smartspace/SmartspaceState;)V

    return-object v0
.end method
