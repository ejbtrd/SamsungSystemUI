.class public abstract Lcom/android/systemui/statusbar/phone/PanelBar;
.super Landroid/widget/FrameLayout;
.source "PanelBar.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBouncerShowing:Z

.field private mExpanded:Z

.field mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

.field protected mPanelFraction:F

.field private mPanelInVisibleReason:I

.field private mState:I

.field private mTracking:Z


# direct methods
.method public static synthetic $r8$lambda$TF6D9JyOAU-lzVzlhlaS-xCKwMw(Lcom/android/systemui/statusbar/phone/PanelBar;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->lambda$panelExpansionChanged$1(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fjJ8V6lUX3gGN8zc_BaR6Kbu1Hw(Lcom/android/systemui/statusbar/phone/PanelBar;F)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->lambda$panelExpansionChanged$0(F)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    return-void
.end method

.method public static final varargs LOG(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$panelExpansionChanged$0(F)Z
    .locals 0

    .line 253
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$panelExpansionChanged$1(F)Z
    .locals 0

    .line 256
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    cmpl-float p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public collapsePanel(ZZF)V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 291
    invoke-virtual {v0, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    move p2, v1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->resetViews(Z)V

    const/4 p2, 0x0

    .line 295
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    move p2, v2

    :goto_0
    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "collapsePanel: animate=%s waiting=%s"

    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p2, :cond_1

    .line 298
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_1
    return-void
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    return p0
.end method

.method protected getPanelInvisibleReason()I
    .locals 0

    .line 154
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    return p0
.end method

.method public go(I)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 67
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "go state: %d -> %d"

    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v5, 0x3

    aput-object v0, v2, v5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v5, 0x4

    aput-object v0, v2, v5

    const-string v0, "go state: %d -> %d, tracking=%b, expanded=%b, fraction=%f"

    .line 70
    invoke-static {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eq v0, p1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/PanelStateNotifier;->notify(Landroid/content/Context;I)V

    .line 80
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_2

    if-ne p1, v4, :cond_1

    move v3, v4

    .line 82
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setIsShadeOpening(Z)V

    :cond_2
    return-void
.end method

.method public isClosed()Z
    .locals 0

    .line 311
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 145
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    return p0
.end method

.method public onClosingFinished()V
    .locals 0

    return-void
.end method

.method public onExpandingFinished()V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v0, "onExpandingFinished"

    .line 331
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 120
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    return-void
.end method

.method public onPanelCollapsed()V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v0, "onPanelCollapsed"

    .line 315
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPanelFullyOpened()V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v0, "onPanelFullyOpened"

    .line 319
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPanelPeeked()V
    .locals 1

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string/jumbo v0, "onPanelPeeked"

    .line 307
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 102
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "panel_bar_super_parcelable"

    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string/jumbo v0, "state"

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    :cond_1
    return-void

    .line 103
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string/jumbo v2, "panel_bar_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    iget p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    if-nez p0, :cond_0

    .line 206
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "onTouch: all panels disabled, ignoring touch at (%d,%d)"

    .line 206
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    .line 212
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-nez v0, :cond_2

    .line 216
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Object;

    .line 217
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string/jumbo p1, "onTouch: no panel for touch at (%d,%d)"

    .line 216
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 220
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isEnabled()Z

    move-result v4

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    .line 221
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object v0, v6, v3

    if-eqz v4, :cond_3

    const-string v7, ""

    goto :goto_0

    :cond_3
    const-string v7, " (disabled)"

    :goto_0
    aput-object v7, v6, v1

    const-string v7, "PanelBar.onTouch: state=%d ACTION_DOWN: panel %s %s"

    invoke-static {v7, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_4

    .line 225
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelBar;->TAG:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v2

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string/jumbo p1, "onTouch: panel (%s) is disabled, ignoring touch at (%d,%d)"

    .line 225
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 231
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    return v2
.end method

.method public onTrackingStarted()V
    .locals 1

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 327
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    return-void
.end method

.method public panelEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public panelExpansionChanged(FZ)V
    .locals 7

    .line 242
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 249
    const-class v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 250
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isStarted()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/PanelBar;F)V

    new-array v5, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 254
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, "panelExpansionChanged %f -> %f"

    invoke-static {v6, v5}, Lcom/android/systemui/util/LogUtil;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PanelBar;F)V

    .line 251
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->detailLog(Ljava/util/function/BooleanSupplier;Ljava/lang/String;Ljava/util/function/BooleanSupplier;)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 261
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelFraction:F

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    if-eqz p2, :cond_3

    .line 266
    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-nez p1, :cond_1

    .line 267
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelPeeked()V

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    move p1, v4

    goto :goto_1

    :cond_3
    move p1, v3

    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    .line 275
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p2, :cond_4

    .line 276
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelFullyOpened()V

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 278
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mTracking:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mState:I

    if-eqz p1, :cond_5

    .line 279
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelBar;->go(I)V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onPanelCollapsed()V

    :cond_5
    :goto_2
    return-void

    .line 243
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "frac cannot be NaN"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract panelScrimMinFractionChanged(F)V
.end method

.method protected resetAndGetLastPanelInvisibleReason()I
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    const/4 v1, -0x1

    .line 160
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    return v0
.end method

.method public setBouncerShowing(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 134
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->updateVisibility()V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    :cond_1
    return-void
.end method

.method public setPanel(Lcom/android/systemui/statusbar/phone/PanelViewController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 126
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V

    return-void
.end method

.method protected shouldPanelBeVisible()Z
    .locals 4

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    .line 167
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    .line 168
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFlingOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 171
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    :cond_2
    if-eqz v0, :cond_3

    .line 174
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mBouncerShowing:Z

    if-eqz v3, :cond_3

    .line 176
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    move v0, v2

    .line 179
    :cond_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 180
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardDoneOnFoldOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    .line 182
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    move v0, v2

    .line 185
    :cond_4
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const-class v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 186
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShownSwipeBouncer()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    .line 188
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanelInVisibleReason:I

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    return v2
.end method

.method protected updateVisibility()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelBar;->mPanel:Lcom/android/systemui/statusbar/phone/PanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->shouldPanelBeVisible()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
