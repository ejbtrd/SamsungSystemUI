.class public Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;
.super Ljava/lang/Object;
.source "FaceAuthScreenBrightnessController.kt"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final brightnessAnimationDuration:J

.field private brightnessAnimator:Landroid/animation/ValueAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final enabled:Z

.field private final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateCallback:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mainHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final maxScreenBrightness:F

.field private final maxScrimOpacity:F

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private overridingBrightness:Z

.field private final resources:Landroid/content/res/Resources;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final systemSettings:Lcom/android/systemui/util/settings/SystemSettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private useFaceAuthWallpaper:Z

.field private userDefinedBrightness:F

.field private whiteOverlay:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SystemSettings;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;Z)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/NotificationShadeWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/util/settings/GlobalSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/util/settings/SystemSettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "notificationShadeWindowController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resources"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemSettings"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 62
    iput-object p2, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->resources:Landroid/content/res/Resources;

    .line 64
    iput-object p4, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 65
    iput-object p5, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 66
    iput-object p6, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->mainHandler:Landroid/os/Handler;

    .line 67
    iput-object p7, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 68
    iput-boolean p8, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->enabled:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    .line 74
    invoke-static {}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->getDEFAULT_USE_FACE_WALLPAPER()Z

    move-result p1

    const-string/jumbo p2, "sysui.use_face_auth_wallpaper"

    invoke-interface {p4, p2, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 73
    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->useFaceAuthWallpaper:Z

    .line 76
    invoke-static {}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->getDEFAULT_ANIMATION_DURATION()J

    move-result-wide p1

    const-string/jumbo p3, "sysui.face_brightness_anim_duration"

    invoke-interface {p4, p3, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimationDuration:J

    .line 78
    invoke-static {}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->getMAX_SCREEN_BRIGHTNESS()I

    move-result p1

    const-string/jumbo p2, "sysui.face_max_brightness"

    invoke-interface {p4, p2, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 77
    iput p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->maxScreenBrightness:F

    .line 80
    invoke-static {}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessControllerKt;->getMAX_SCRIM_OPACTY()I

    move-result p1

    const-string/jumbo p3, "sysui.face_max_scrim_opacity"

    invoke-interface {p4, p3, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p2

    .line 79
    iput p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->maxScrimOpacity:F

    .line 81
    new-instance p1, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->keyguardUpdateCallback:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;

    return-void
.end method

.method public static final synthetic access$getEnabled$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->enabled:Z

    return p0
.end method

.method public static final synthetic access$getMaxScrimOpacity$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->maxScrimOpacity:F

    return p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method public static final synthetic access$getSystemSettings$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Lcom/android/systemui/util/settings/SystemSettings;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    return-object p0
.end method

.method public static final synthetic access$getUserDefinedBrightness$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    return p0
.end method

.method public static final synthetic access$getWhiteOverlay$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$setBrightnessAnimator$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public static final synthetic access$setOverridingBrightness(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->setOverridingBrightness(Z)V

    return-void
.end method

.method public static final synthetic access$setUserDefinedBrightness$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;F)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    return-void
.end method

.method public static synthetic getUseFaceAuthWallpaper$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final setOverridingBrightness(Z)V
    .locals 4

    .line 97
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->overridingBrightness:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 100
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->overridingBrightness:Z

    .line 101
    iget-object v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    const/4 v0, 0x0

    const-string/jumbo v1, "whiteOverlay"

    const/4 v2, 0x0

    if-nez p1, :cond_5

    .line 104
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setFaceAuthDisplayBrightness(F)V

    .line 105
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v2

    if-lez p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->createAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 108
    new-instance v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$1;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    new-instance v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$1$2;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 106
    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 105
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_5
    iget p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->maxScreenBrightness:F

    iget v3, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    invoke-static {p1, v3}, Ljava/lang/Float;->max(FF)F

    move-result p1

    .line 124
    iget-object v3, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 125
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->createAnimator(FF)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 126
    iget-wide v1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 127
    new-instance v1, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$1;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 136
    new-instance p1, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$overridingBrightness$2$2;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 141
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 142
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 125
    iput-object v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimator:Landroid/animation/ValueAnimator;

    return-void

    .line 124
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final attach(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "overlayView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    const/4 v0, 0x0

    const-string/jumbo v1, "whiteOverlay"

    if-eqz p1, :cond_4

    const/16 v2, 0x8

    .line 167
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(I)V

    .line 168
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_3

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 171
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->whiteOverlay:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-class v0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this.javaClass.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 174
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->keyguardUpdateCallback:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    .line 176
    iget-object v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$attach$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$attach$1;-><init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Landroid/os/Handler;)V

    const-string/jumbo v0, "screen_brightness_float"

    .line 175
    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserver(Ljava/lang/String;Landroid/database/ContentObserver;)V

    .line 181
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->systemSettings:Lcom/android/systemui/util/settings/SystemSettings;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    return-void

    .line 171
    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public createAnimator(FF)Landroid/animation/ValueAnimator;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    .line 146
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
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

    const-string p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->overridingBrightness:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "overridingBrightness: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->getUseFaceAuthWallpaper()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p3, "useFaceAuthWallpaper: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    iget-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimator:Landroid/animation/ValueAnimator;

    const-string p3, "brightnessAnimator: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    iget-wide v0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->brightnessAnimationDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "brightnessAnimationDuration: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    iget p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->maxScreenBrightness:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string p3, "maxScreenBrightness: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->userDefinedBrightness:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string/jumbo p3, "userDefinedBrightness: "

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->enabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "enabled: "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getFaceAuthWallpaper()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 154
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 155
    iget-boolean v1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->useFaceAuthWallpaper:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 157
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 159
    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->resources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$drawable;->face_auth_wallpaper:I

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUseFaceAuthWallpaper()Z
    .locals 0

    .line 73
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->useFaceAuthWallpaper:Z

    return p0
.end method
