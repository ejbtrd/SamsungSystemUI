.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController;
.super Ljava/lang/Object;
.source "NotificationShadeDepthController.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;,
        Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;,
        Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blurRoot:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final blurUtils:Lcom/android/systemui/statusbar/BlurUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private blursDisabledForAppLaunch:Z

.field private brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private brightnessMirrorVisible:Z

.field private final choreographer:Landroid/view/Choreographer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isBlurred:Z

.field private isClosed:Z

.field private isOpen:Z

.field private isReduceTransparencyEnabled:Z

.field private keyguardAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final keyguardStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastAppliedBlur:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private notificationAnimator:Landroid/animation/Animator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public panelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private prevShadeDirection:I

.field private prevShadeVelocity:F

.field private prevTimestamp:J

.field private prevTracking:Z

.field private qsPanelExpansion:F

.field private final resources:Landroid/content/res/Resources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public root:Landroid/view/View;

.field private final scrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrimsVisible:Z

.field private settingsHelper:Lcom/android/systemui/util/SettingsHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shadeExpansion:F

.field private shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private statusBarState:I

.field private final statusBarStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private transitionToFullShadeProgress:F

.field private final updateBlurCallback:Landroid/view/Choreographer$FrameCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private updateScheduled:Z

.field private wakeAndUnlockBlurRadius:I

.field private final wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wallpaperDimAmount:I

.field private final wallpaperManager:Landroid/app/WallpaperManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private windowDimAmount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->Companion:Lcom/android/systemui/statusbar/NotificationShadeDepthController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/BlurUtils;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/view/Choreographer;Landroid/app/WallpaperManager;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/dump/DumpManager;Landroid/content/res/Resources;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/systemui/statusbar/BlurUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/policy/KeyguardStateController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/view/Choreographer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/app/WallpaperManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/NotificationShadeWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/phone/DozeParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "statusBarStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blurUtils"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biometricUnlockController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "choreographer"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wallpaperManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "notificationShadeWindowController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dozeParameters"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wallpaperController"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperManager:Landroid/app/WallpaperManager;

    .line 74
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 75
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 77
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->resources:Landroid/content/res/Resources;

    .line 79
    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 81
    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const-string p2, "DepthController"

    const/4 p3, 0x3

    .line 94
    invoke-static {p2, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->DEBUG:Z

    const/4 p2, 0x1

    .line 102
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    .line 105
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    const-wide/16 p5, -0x1

    .line 108
    iput-wide p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    .line 116
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 117
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 120
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    .line 135
    const-class p3, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    const-string p5, "get(SettingsHelper::class.java)"

    invoke-static {p3, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 137
    invoke-virtual {p3}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isReduceTransparencyEnabled:Z

    .line 209
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$updateBlurCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Landroid/view/Choreographer$FrameCallback;

    .line 317
    new-instance p3, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1;

    .line 354
    new-instance p5, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateCallback:Lcom/android/systemui/statusbar/NotificationShadeDepthController$statusBarStateCallback$1;

    .line 379
    const-class p6, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p6

    const-string p8, "javaClass.name"

    invoke-static {p6, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p9, p6, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 381
    invoke-interface {p4, p3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 383
    invoke-interface {p1, p5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 384
    sget-boolean p3, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz p3, :cond_0

    .line 385
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarState:I

    .line 387
    :cond_0
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    invoke-interface {p7, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setScrimsVisibilityListener(Ljava/util/function/Consumer;)V

    .line 391
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/high16 p3, 0x43480000    # 200.0f

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setStiffness(F)V

    .line 392
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setDampingRatio(F)V

    const-string p1, "accessibility_reduce_transparency"

    .line 395
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 396
    iget-object p3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    new-array p2, p2, [Landroid/net/Uri;

    const/4 p4, 0x0

    aput-object p1, p2, p4

    invoke-virtual {p3, p0, p2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 656
    new-instance p1, Lcom/android/systemui/statusbar/NotificationShadeDepthController$scrimCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$scrimCallback$1;-><init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-void
.end method

.method public static final synthetic access$applyWallpaperBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->applyWallpaperBlur(I)V

    return-void
.end method

.method public static final synthetic access$getBiometricUnlockController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method public static final synthetic access$getBlurRoot$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/view/View;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurRoot:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getBlurUtils$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/BlurUtils;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    return-object p0
.end method

.method public static final synthetic access$getDozeParameters$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method public static final synthetic access$getInterpolatedBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getInterpolatedBlur(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getKeyguardStateController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method public static final synthetic access$getKeyguardUpdateMonitor$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static final synthetic access$getNotificationAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Landroid/animation/Animator;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method public static final synthetic access$getPrevShadeDirection$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeDirection:I

    return p0
.end method

.method public static final synthetic access$getPrevShadeVelocity$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeVelocity:F

    return p0
.end method

.method public static final synthetic access$getPrevTracking$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    return p0
.end method

.method public static final synthetic access$getScrimsVisible$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    return p0
.end method

.method public static final synthetic access$getShadeExpansion$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)F
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    return p0
.end method

.method public static final synthetic access$getWakeAndUnlockBlurRadius$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    return p0
.end method

.method public static final synthetic access$getWallpaperDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperDimAmount:I

    return p0
.end method

.method public static final synthetic access$getWindowDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->windowDimAmount:I

    return p0
.end method

.method public static final synthetic access$scheduleUpdate(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$setKeyguardAnimator$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/animation/Animator;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public static final synthetic access$setScrimsVisible(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setScrimsVisible(Z)V

    return-void
.end method

.method public static final synthetic access$setUpdateScheduled$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Z)V
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    return-void
.end method

.method public static final synthetic access$setWakeAndUnlockBlurRadius(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setWakeAndUnlockBlurRadius(I)V

    return-void
.end method

.method public static final synthetic access$setWindowDimAmount$p(Lcom/android/systemui/statusbar/NotificationShadeDepthController;I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->windowDimAmount:I

    return-void
.end method

.method public static final synthetic access$updateShadeAnimationBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;FZFI)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeAnimationBlur(FZFI)V

    return-void
.end method

.method public static final synthetic access$updateShadeBlur(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur()V

    return-void
.end method

.method private final animateBlur(ZF)V
    .locals 1

    .line 495
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p1, :cond_0

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->setStartVelocity(F)V

    .line 504
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method private final applyWallpaperBlur(I)V
    .locals 2

    .line 307
    div-int/lit8 v0, p1, 0x2

    .line 308
    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperDimAmount:I

    if-ne v1, v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->applyBlur(I)V

    .line 311
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wallpaperDimAmount:I

    return-void
.end method

.method public static synthetic getBrightnessMirrorSpring$annotations()V
    .locals 0

    return-void
.end method

.method private final getInterpolatedBlur(I)I
    .locals 4

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 292
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    goto :goto_0

    .line 293
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 294
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getBlurEffectDistance(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 295
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BlurUtils;->getMaxBlurRadius()I

    move-result v1

    .line 296
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->resources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$integer;->theme_designer_quick_star_blur_level:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p0, v2

    int-to-float v1, v1

    mul-float/2addr v1, p0

    float-to-int p0, v1

    .line 298
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    div-float/2addr p1, v0

    .line 300
    invoke-static {p1, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 301
    invoke-virtual {v1, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    int-to-float v0, p0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 302
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static synthetic getShadeSpring$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUpdateBlurCallback$annotations()V
    .locals 0

    return-void
.end method

.method private final scheduleUpdate(Landroid/view/View;)V
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 519
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateScheduled:Z

    .line 520
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurRoot:Landroid/view/View;

    .line 522
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method static synthetic scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 515
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate(Landroid/view/View;)V

    return-void
.end method

.method private final setScrimsVisible(Z)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 190
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimsVisible:Z

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 191
    invoke-static {p0, v0, p1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method private final setWakeAndUnlockBlurRadius(I)V
    .locals 0

    return-void
.end method

.method private final shouldApplyShadeBlur()Z
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    .line 531
    const-class v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 532
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 538
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private final updateShadeAnimationBlur(FZFI)V
    .locals 4

    .line 450
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    cmpl-float v0, p1, v1

    if-lez v0, :cond_5

    .line 453
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    if-eqz v0, :cond_0

    .line 454
    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    .line 455
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    :cond_0
    if-eqz p2, :cond_1

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-nez v0, :cond_1

    .line 460
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    :cond_1
    if-nez p2, :cond_2

    if-gez p4, :cond_2

    .line 464
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p2, :cond_2

    .line 465
    invoke-direct {p0, v3, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_3

    move p1, v2

    goto :goto_0

    :cond_3
    move p1, v3

    :goto_0
    if-eqz p1, :cond_4

    .line 469
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    if-nez p1, :cond_7

    .line 470
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    .line 472
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-nez p1, :cond_7

    .line 473
    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    goto :goto_1

    .line 477
    :cond_4
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    goto :goto_1

    .line 480
    :cond_5
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    if-nez p1, :cond_7

    .line 481
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    .line 483
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isBlurred:Z

    if-eqz p1, :cond_7

    .line 484
    invoke-direct {p0, v3, p3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    goto :goto_1

    .line 488
    :cond_6
    invoke-direct {p0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->animateBlur(ZF)V

    .line 489
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isClosed:Z

    .line 490
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isOpen:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private final updateShadeBlur()V
    .locals 3

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shouldApplyShadeBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 512
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    new-instance p1, Landroid/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "StatusBarWindowBlurController:"

    .line 543
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 545
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "shadeRadius: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "shadeAnimation: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "brightnessMirrorRadius: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->wakeAndUnlockBlurRadius:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "wakeAndUnlockBlur: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getBlursDisabledForAppLaunch()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "blursDisabledForAppLaunch: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getQsPanelExpansion()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo p3, "qsPanelExpansion: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 551
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->getTransitionToFullShadeProgress()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const-string/jumbo p3, "transitionToFullShadeProgress: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 552
    iget p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->lastAppliedBlur:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "lastAppliedBlur: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->resources:Landroid/content/res/Resources;

    sget p3, Lcom/android/systemui/R$integer;->theme_designer_quick_star_blur_level:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p3, "themeParkBlurRadius: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 554
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->resources:Landroid/content/res/Resources;

    sget p2, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p2, "isThemeParkTurnedOn: "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getBlursDisabledForAppLaunch()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    return p0
.end method

.method public final getBrightnessMirrorSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getPanelViewController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 129
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->panelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "panelViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getQsPanelExpansion()F
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    return p0
.end method

.method public final getRoot()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string/jumbo p0, "root"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method public final getShadeAnimation()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getShadeSpring()Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    return-object p0
.end method

.method public final getTransitionToFullShadeProgress()F
    .locals 0

    .line 151
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    return p0
.end method

.method public final isReduceTransparencyEnabled()Z
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isReduceTransparencyEnabled:Z

    return p0
.end method

.method public final onBouncerExpansionChanged(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x96

    .line 665
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->applyWallpaperBlur(I)V

    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "accessibility_reduce_transparency"

    .line 648
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 649
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->isReduceTransparencyEnabled:Z

    .line 650
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "QUICK_SUPPORT_REDUCE_TRANSPARENCY setting value is changed. isReduceTransparencyEnabled : "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DepthController"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->choreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateBlurCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_2
    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 8

    .line 412
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 416
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    cmpg-float v2, v2, p1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    if-ne v2, p2, :cond_2

    .line 417
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    return-void

    .line 422
    :cond_2
    iget-wide v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_3

    .line 423
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    goto :goto_1

    :cond_3
    sub-long v2, v0, v2

    long-to-double v2, v2

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v2, v6

    double-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 425
    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    .line 429
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    sub-float v2, p1, v2

    .line 430
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    const v4, -0x3ac48000    # -3000.0f

    const v5, 0x453b8000    # 3000.0f

    .line 431
    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    .line 433
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeAnimationBlur(FZFI)V

    .line 435
    iput v3, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeDirection:I

    .line 436
    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevShadeVelocity:F

    .line 437
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeExpansion:F

    .line 438
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTracking:Z

    .line 439
    iput-wide v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->prevTimestamp:J

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->updateShadeBlur()V

    return-void
.end method

.method public final removeListener(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setBlursDisabledForAppLaunch(Z)V
    .locals 3

    .line 164
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 167
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blursDisabledForAppLaunch:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 168
    invoke-static {p0, v1, v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->getRadius()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 177
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    .line 178
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    .line 180
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-static {p1, v0, v1, v2, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->shadeAnimation:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->finishIfRunning()V

    return-void
.end method

.method public final setBrightnessMirrorVisible(Z)V
    .locals 2

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorVisible:Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->brightnessMirrorSpring:Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->blurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BlurUtils;->blurRadiusOfRatio(F)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;->animateTo$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthAnimation;ILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public final setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->panelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-void
.end method

.method public final setQsPanelExpansion(F)V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->qsPanelExpansion:F

    const/4 p1, 0x0

    .line 145
    invoke-static {p0, p1, v1, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final setRoot(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Landroid/view/View;

    return-void
.end method

.method public final setStatusBarState(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->statusBarState:I

    return-void
.end method

.method public final setTransitionToFullShadeProgress(F)V
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 154
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->transitionToFullShadeProgress:F

    const/4 p1, 0x0

    .line 155
    invoke-static {p0, p1, v1, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate$default(Lcom/android/systemui/statusbar/NotificationShadeDepthController;Landroid/view/View;ILjava/lang/Object;)V

    return-void
.end method
