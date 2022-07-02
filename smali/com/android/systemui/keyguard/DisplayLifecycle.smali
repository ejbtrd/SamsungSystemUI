.class public Lcom/android/systemui/keyguard/DisplayLifecycle;
.super Lcom/android/systemui/keyguard/SecLifecycle;
.source "DisplayLifecycle.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/keyguard/SecLifecycle<",
        "Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mCurrentState:I

.field private final mDisplayHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/Display;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDisplayMetricsHash:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayRealSizeHash:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayRotationHash:Landroid/util/SparseIntArray;

.field private final mDisplaySizeHash:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsFolderOpened:Z

.field private mPreviousState:I


# direct methods
.method public static synthetic $r8$lambda$3LrSZ7W_81VqNVZC0-ZFcmLOJ5I(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchFolderStateChanged$6(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6ds04JKWj14SEBgdtUBR4LuHXzs(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayAdded$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LOrn97V8sv17Ji7Gm1JVpDDEtxA(Ljava/io/PrintWriter;Landroid/view/Display;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dump$8(Ljava/io/PrintWriter;Landroid/view/Display;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_YKAaCzeRoAg354SG5CCn-1neI(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayChanged$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YVWH0D0otEYnGg0KrcwNd9PNxXA(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayChanged$2(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_-m2991FvXYTDMER5RQyYbOWSRk(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayRemoved$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lWRj3D_5z3dSEnhmk6MvQ5opang(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayRemoved$4(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pJabE5oEOuMMpFkIpTYZmaZCHks(Lcom/android/systemui/keyguard/DisplayLifecycle;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchFolderStateChanged$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tJaLZ2_imBeolo0Hymb8bv6oEWo(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->lambda$dispatchDisplayAdded$0(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/keyguard/SecLifecycle;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    .line 52
    iput v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    .line 54
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 73
    iput-object p2, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    const-string p2, "display"

    .line 74
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p0, 0x0

    .line 75
    invoke-virtual {p1, v0, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayAdded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayRemoved(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchDisplayChanged(I)V

    return-void
.end method

.method private addDisplay(I)V
    .locals 3

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDisplay id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 265
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "addDisplay return - display is null or id is invalid"

    .line 266
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dispatchDisplayAdded(I)V
    .locals 2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchDisplayChanged(I)V
    .locals 2

    .line 85
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateDisplay(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    .line 86
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private dispatchDisplayRemoved(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchFolderStateChanged(Z)V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchFolderStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    .line 106
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/keyguard/DisplayLifecycle;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic lambda$dispatchDisplayAdded$0(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 80
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayAdded(I)V

    return-void
.end method

.method private synthetic lambda$dispatchDisplayAdded$1(I)V
    .locals 1

    .line 80
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$dispatchDisplayChanged$2(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 87
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayChanged(I)V

    return-void
.end method

.method private synthetic lambda$dispatchDisplayChanged$3(I)V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$dispatchDisplayRemoved$4(ILcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 93
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onDisplayRemoved(I)V

    return-void
.end method

.method private synthetic lambda$dispatchDisplayRemoved$5(I)V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->removeDisplay(I)V

    return-void
.end method

.method private static synthetic lambda$dispatchFolderStateChanged$6(ZLcom/android/systemui/keyguard/DisplayLifecycle$Observer;)V
    .locals 0

    .line 106
    invoke-interface {p1, p0}, Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;->onFolderStateChanged(Z)V

    return-void
.end method

.method private synthetic lambda$dispatchFolderStateChanged$7(Z)V
    .locals 1

    .line 106
    new-instance v0, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda8;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->dispatch(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$dump$8(Ljava/io/PrintWriter;Landroid/view/Display;)V
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private removeDisplay(I)V
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeDisplay id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 355
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method private updateCacheVariables(I)Z
    .locals 8

    .line 277
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 281
    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 282
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    if-nez p1, :cond_2

    .line 285
    iget v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    iget v4, v2, Landroid/view/DisplayInfo;->state:I

    if-eq v3, v4, :cond_2

    if-nez v3, :cond_1

    .line 287
    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    goto :goto_0

    .line 289
    :cond_1
    iput v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    .line 290
    iput v4, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mCurrentState:I

    .line 295
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 296
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 297
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {v3, v4}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 300
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplaySizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    .line 303
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 304
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 305
    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    if-eqz v3, :cond_5

    .line 306
    invoke-virtual {v3, v6}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 308
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    .line 311
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/DisplayMetrics;

    .line 312
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 313
    invoke-virtual {v0, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v3, :cond_7

    .line 314
    invoke-virtual {v3, v7}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 316
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v5

    .line 319
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 320
    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v3, :cond_a

    .line 321
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_9

    goto :goto_1

    :cond_9
    move v5, v1

    goto :goto_2

    .line 323
    :cond_a
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRotationHash:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v5, :cond_b

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCacheVariables id = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", display = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", size = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", realSize = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", rotation = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayLifecycle"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v5
.end method

.method private updateDisplay(I)Ljava/lang/Boolean;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDisplay id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayLifecycle"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateDisplay return - display is null"

    .line 341
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->updateCacheVariables(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "DisplayLifecycle:"

    .line 369
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 371
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda9;

    .line 372
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;

    invoke-direct {p1, p2}, Lcom/android/systemui/keyguard/DisplayLifecycle$$ExternalSyntheticLambda7;-><init>(Ljava/io/PrintWriter;)V

    .line 373
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getDisplay(I)Landroid/view/Display;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    if-nez v0, :cond_0

    const-string v0, "DisplayLifecycle"

    const-string v1, "getDisplay() is null, get directly from DisplayManager"

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    const/4 v0, 0x0

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplayMetrics(I)Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayMetrics(I)Landroid/util/DisplayMetrics;
    .locals 1

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayMetricsHash:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 246
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "DisplayLifecycle"

    const-string v0, "getDisplayMetrics(%d) is null, return empty Point"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    :cond_1
    return-object p0
.end method

.method public getPreviousDisplayState()I
    .locals 0

    .line 360
    iget p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mPreviousState:I

    return p0
.end method

.method public getRealSize()Landroid/graphics/Point;
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize(I)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public getRealSize(I)Landroid/graphics/Point;
    .locals 1

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->addDisplay(I)V

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayRealSizeHash:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "DisplayLifecycle"

    const-string v0, "getRealSize(%d) is null, return empty Point"

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 173
    :cond_1
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object p1
.end method

.method public isFolderOpened()Z
    .locals 0

    .line 258
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    return p0
.end method

.method public setFolderState(Z)V
    .locals 0

    .line 254
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->dispatchFolderStateChanged(Z)V

    return-void
.end method
