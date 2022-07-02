.class public Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
.super Ljava/lang/Object;
.source "EdgeLightingCoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;


# instance fields
.field private mAttachState:Z

.field private mCoverStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCoverType:I

.field private mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

.field private mSwitchState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mAttachState:Z

    const/4 v0, 0x2

    .line 25
    iput v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 13
    sget-boolean v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Ljava/util/ArrayList;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mAttachState:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    .locals 2

    const-class v0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;

    invoke-direct {v1}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;-><init>()V

    sput-object v1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->sInstance:Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getSwitchState()Z
    .locals 0

    .line 112
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    return p0
.end method

.method public registerCoverListener(Landroid/content/Context;Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 34
    new-instance p1, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$1;-><init>(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSwitchState:Z

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mAttachState:Z

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    goto :goto_1

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    return-void
.end method

.method public unregisterCoverListener(Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager$CoverStateListener;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    iget-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 100
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 105
    iput-object p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mSCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$CoverStateListener;

    const/4 p1, 0x2

    .line 106
    iput p1, p0, Lcom/android/systemui/edgelighting/device/EdgeLightingCoverManager;->mCoverType:I

    :cond_0
    return-void
.end method
