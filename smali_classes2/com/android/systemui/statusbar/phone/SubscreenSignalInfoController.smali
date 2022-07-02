.class public Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;
.super Ljava/lang/Object;
.source "SubscreenSignalInfoController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMarqueeStartRunnable:Ljava/lang/Runnable;

.field private mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

.field private mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

.field mSubDisplay:Landroid/view/Display;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$1;-><init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mMarqueeStartRunnable:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$2;-><init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    const-string v0, "display"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const-string v1, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 55
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSubDisplay:Landroid/view/Display;

    const-string/jumbo v0, "power"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 59
    new-instance v0, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const v1, 0x1000000a

    const-string v2, "SystemUI:SubscreenSignalInfo"

    .line 60
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/32 v1, 0xea60

    .line 59
    invoke-static {p1, v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Landroid/os/PowerManager$WakeLock;J)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    const-string v1, "SubscreenSignalInfoController"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/util/wakelock/SettableWakeLock;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;)Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    return-object p1
.end method

.method private acquirePresentationWakelock()V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x1388

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    invoke-virtual {p0}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private makeSubScreenSignalInfo()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->setCallback(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView$Callback;)V

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->makeView()V

    return-void
.end method

.method private showSubscreenSignalInfo()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    if-nez v1, :cond_0

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSubDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mSignalInfoView:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;-><init>(Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;Landroid/content/Context;Landroid/view/Display;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    .line 69
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Presentation;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SubscreenSignalInfoController"

    const-string v2, "Invalid display: "

    .line 71
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->updateSubscreenSignalInfoView(Landroid/view/View;)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->acquirePresentationWakelock()V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mMarqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mMarqueeStartRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private updateSubscreenSignalInfoView(Landroid/view/View;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->getContents()Landroid/view/ViewGroup;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mPresentation:Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController$SubscreenSignalInfoPresentation;->getContents()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " FOLD STATE - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "FOLD "

    goto :goto_0

    :cond_0
    const-string v1, "UNFOLD "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSignalInfoController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 190
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mMarqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 193
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onTouched()V
    .locals 2

    const-string v0, "SubscreenSignalInfoController"

    const-string v1, " onTouched "

    .line 179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mMarqueeStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public showSignalInfo()V
    .locals 2

    const-string v0, "SubscreenSignalInfoController"

    const-string v1, " showSignalInfo "

    .line 214
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->makeSubScreenSignalInfo()V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SubscreenSignalInfoController;->showSubscreenSignalInfo()V

    return-void
.end method
