.class public Lcom/android/systemui/navigationbar/ScreenPinningNotify;
.super Ljava/lang/Object;
.source "ScreenPinningNotify.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastShowToastTime:J

.field private mLastToast:Landroid/widget/Toast;

.field private mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getPinToastOptionalText(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    .line 91
    sget p0, Lcom/android/systemui/R$string;->sec_screen_pinning_toast_gesture_nav:I

    return p0

    :cond_0
    if-eqz p2, :cond_2

    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    if-eqz p0, :cond_1

    .line 94
    sget p0, Lcom/android/systemui/R$string;->sec_screen_pinning_toast_accessibility:I

    return p0

    .line 96
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->sec_screen_pinning_toast:I

    return p0

    .line 99
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->screen_pinning_toast_recents_invisible:I

    return p0
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method

.method private onTouchExplorationEnabled()Z
    .locals 1

    .line 84
    iget-object p0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public showEscapeToast(ZZ)V
    .locals 6

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 64
    iget-wide v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-string p0, "ScreenPinningNotify"

    const-string p1, "Ignore toast since it is requested in very short interval."

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 69
    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->onTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mTouchExplorationEnabled:Z

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->getPinToastOptionalText(ZZ)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastToast:Landroid/widget/Toast;

    .line 74
    iput-wide v0, p0, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->mLastShowToastTime:J

    return-void
.end method

.method public showPinningExitToast()V
    .locals 1

    .line 56
    sget v0, Lcom/android/systemui/R$string;->sec_screen_pinning_exit:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method

.method public showPinningStartToast()V
    .locals 1

    .line 49
    sget v0, Lcom/android/systemui/R$string;->sec_screen_pinning_start:I

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    return-void
.end method
