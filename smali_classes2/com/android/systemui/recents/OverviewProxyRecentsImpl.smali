.class public Lcom/android/systemui/recents/OverviewProxyRecentsImpl;
.super Ljava/lang/Object;
.source "OverviewProxyRecentsImpl.java"

# interfaces
.implements Lcom/android/systemui/recents/RecentsImplementation;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mThreeFingerKeyReleased:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;


# direct methods
.method public static synthetic $r8$lambda$1mam8pOGjuwldef5yP49TwCUeIo(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->lambda$toggleRecentApps$1(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7C70Yx-ac-MEOtydiJgffqcvlF8(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->lambda$toggleRecentApps$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xpruCHb9jU5tvlYkrC0bx-Ci-q4(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->lambda$sendThreeFingerGestureKeyEvent$2(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;>;)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/Lazy;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    return-void
.end method

.method private synthetic lambda$sendThreeFingerGestureKeyEvent$2(Landroid/view/KeyEvent;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendThreeFingerGestureKeyEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverviewProxyRecentsImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_0

    .line 166
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p1, :cond_0

    .line 167
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyThreeFingerGestureBottom()V

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_0

    .line 160
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyThreeFingerGestureTop()V

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_0

    .line 154
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyThreeFingerGestureRight()V

    .line 156
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    goto :goto_0

    .line 148
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p1}, Lcom/android/systemui/recents/OverviewProxyService;->notifyThreeFingerGestureLeft()V

    .line 150
    iput-boolean v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mThreeFingerKeyReleased:Z

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x43d
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$toggleRecentApps$0()V
    .locals 2

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewToggle()V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->notifyToggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OverviewProxyRecentsImpl"

    const-string v1, "Cannot send toggle recents through proxy service."

    .line 120
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleRecentApps$1(Ljava/lang/Runnable;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public hideRecentApps(ZZ)V
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewHidden(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string p2, "Failed to send overview hide event to launcher."

    .line 101
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public onStart(Landroid/content/Context;)V
    .locals 1

    .line 72
    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "trust"

    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/trust/TrustManager;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 75
    const-class p1, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/recents/OverviewProxyService;

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-void
.end method

.method public sendThreeFingerGestureKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Landroid/view/KeyEvent;)V

    .line 176
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onOverviewShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OverviewProxyRecentsImpl"

    const-string v0, "Failed to send overview show event to launcher."

    .line 86
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public toggleRecentApps()V
    .locals 8

    .line 111
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v3, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method
