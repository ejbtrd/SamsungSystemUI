.class Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
.super Ljava/util/Observable;
.source "NetspeedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetspeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSpeedManager"
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;


# instance fields
.field private final UPDATE_DATA1:I

.field private final UPDATE_DATA2:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/4 p1, 0x1

    .line 380
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA1:I

    const/4 p1, 0x2

    .line 381
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->UPDATE_DATA2:I

    .line 415
    new-instance p1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager$1;-><init>(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;)V
    .locals 0

    .line 377
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;
    .locals 3

    .line 404
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v0, :cond_1

    .line 405
    const-class v0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    monitor-enter v0

    .line 406
    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    if-nez v1, :cond_0

    const-string v1, "NetworkSpeedManager"

    const-string v2, "getInstance == null"

    .line 407
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    .line 410
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 412
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->sInstance:Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;

    return-object p0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2

    .line 385
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 388
    :cond_0
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public deleteObserver(Ljava/util/Observer;)V
    .locals 0

    .line 393
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 395
    invoke-virtual {p0}, Ljava/util/Observable;->countObservers()I

    move-result p1

    if-nez p1, :cond_0

    .line 396
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/NetspeedView$NetworkSpeedManager;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
