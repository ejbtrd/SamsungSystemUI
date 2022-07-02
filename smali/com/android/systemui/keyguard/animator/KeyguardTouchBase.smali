.class public abstract Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.super Ljava/lang/Object;
.source "KeyguardTouchBase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private affordancePivotX:I

.field private affordancePivotY:I

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private distance:F

.field private intercepting:Z

.field private isMultiTouch:Z

.field private isTouching:Z

.field private isUnlockExecuted:Z

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private longPressAllowHeight:I

.field protected swipeUnlockRadius:I

.field private touchDownX:F

.field private touchDownY:F

.field protected touchSlop:I

.field private userActivityInvokedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->Companion:Lcom/android/systemui/keyguard/animator/KeyguardTouchBase$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/high16 p1, -0x40800000    # -1.0f

    .line 26
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    .line 28
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    return-void
.end method


# virtual methods
.method protected final clearDistance()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    return-void
.end method

.method protected final clearTouchPos()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 111
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    .line 112
    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    return-void
.end method

.method protected final getAffordancePivotX()I
    .locals 0

    .line 23
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->affordancePivotX:I

    return p0
.end method

.method protected final getAffordancePivotY()I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->affordancePivotY:I

    return p0
.end method

.method protected final getCanBeUnlock()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 63
    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canBeUnlock touchStart=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "), multiTouch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean v3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", unlockExecuted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", deviceInteractive="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardTouchBase"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method protected final getDistance()F
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    return p0
.end method

.method protected final getLongPressAllowHeight()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    return p0
.end method

.method protected final getTouchDownX()F
    .locals 0

    .line 26
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    return p0
.end method

.method protected final getTouchDownY()F
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    return p0
.end method

.method public final initDimens()V
    .locals 4

    .line 40
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 42
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->affordancePivotX:I

    .line 43
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->affordancePivotY:I

    .line 44
    iget-object v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->close_handle_underlap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->longPressAllowHeight:I

    .line 45
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    div-float/2addr v1, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x40900000    # 4.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const v1, 0x3e99999a    # 0.3f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40600000    # 3.5f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_1
    const v2, 0x3fe66666    # 1.8f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    const v1, 0x3f333333    # 0.7f

    .line 47
    :goto_0
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    .line 48
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    return-void
.end method

.method protected final isMultiTouch()Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    return p0
.end method

.method protected final isTouching()Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    return p0
.end method

.method protected final isUnlockExecuted()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 124
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    return p0
.end method

.method public final setIntercept(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->intercepting:Z

    return-void
.end method

.method protected final setMultiTouch(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch:Z

    return-void
.end method

.method protected final setTouch(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching:Z

    return-void
.end method

.method protected final setTouchDownPos(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    return-void
.end method

.method protected final setUnlockExecuted(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    return-void
.end method

.method protected final unlockExecute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "KeyguardTouchBase"

    const-string/jumbo v1, "unlockExecute()"

    .line 75
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted:Z

    .line 77
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected final updateDistance(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 95
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownX:F

    sub-float/2addr v0, v1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchDownY:F

    sub-float/2addr v1, v2

    float-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 97
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v0, v1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    .line 99
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDistance curX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " curY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " distance="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardTouchBase"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_3
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    return p0

    :cond_4
    :goto_2
    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->distance:F

    return p1
.end method

.method protected final userActivityForMove(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/16 v2, 0x9c4

    int-to-long v2, v2

    sub-long v2, v0, v2

    .line 54
    iget-wide v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 56
    iput-wide v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityInvokedTime:J

    :cond_0
    return-void
.end method
