.class public Lcom/android/systemui/statusbar/phone/NotificationTapHelper;
.super Ljava/lang/Object;
.source "NotificationTapHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$Factory;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;,
        Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private final mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

.field private final mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

.field private mTimeoutCancel:Ljava/lang/Runnable;

.field private mTrackTouch:Z


# direct methods
.method public static synthetic $r8$lambda$8o_lIxcbOYBb3ywdyuBapJBW3Nk(Lcom/android/systemui/statusbar/phone/NotificationTapHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 54
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 55
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    .line 56
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mDoubleTapListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;

    .line 57
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$1;)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$DoubleTapListener;Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;)V

    return-void
.end method

.method private makeActive()V
    .locals 5

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivated:Z

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationTapHelper;)V

    const-wide/16 v3, 0xbb8

    invoke-interface {v1, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;->onActiveChanged(Z)V

    :cond_0
    return-void
.end method

.method private makeInactive()V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivated:Z

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivationListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$ActivationListener;->onActiveChanged(Z)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTimeoutCancel:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const v0, 0x7fffffff

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->onTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 3

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    .line 80
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    goto :goto_1

    .line 73
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isSimpleTap()Z

    move-result p1

    if-nez p1, :cond_7

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    .line 75
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    goto :goto_1

    .line 83
    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    .line 85
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mSlideBackListener:Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper$SlideBackListener;->onSlideBack()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 88
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mActivated:Z

    if-nez p1, :cond_4

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeActive()V

    goto :goto_1

    .line 91
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->makeInactive()V

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_6

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    .line 123
    :cond_7
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationTapHelper;->mTrackTouch:Z

    return p0
.end method
