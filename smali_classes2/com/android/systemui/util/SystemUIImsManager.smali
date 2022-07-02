.class public final Lcom/android/systemui/util/SystemUIImsManager;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;,
        Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;,
        Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:[Lcom/sec/ims/ImsManager;

.field private mImsManagerConnected:[Z

.field private mImsRegStateChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

.field private mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/ims/ImsManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 45
    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    new-array v1, v0, [Z

    .line 48
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    new-array v1, v0, [Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    aput-object v3, v1, v2

    aput-object v3, v1, v4

    .line 49
    iput-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    new-array v0, v0, [Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aput-object v3, v0, v2

    aput-object v3, v0, v4

    .line 50
    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V

    .line 61
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isMultiSimSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0, v4}, Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManager:[Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/util/SystemUIImsManager;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/SystemUIImsManager;)[Z
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mRegiListeners:[Lcom/android/systemui/util/SystemUIImsManager$RegistrationListener;

    return-object p0
.end method


# virtual methods
.method public addImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 182
    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aget-object p0, p0, p1

    invoke-interface {p2, p0}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;->onImsRegStateChanged(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public createImsManager(I)V
    .locals 4

    .line 70
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const-string v2, "SystemUIImsManager"

    if-eqz v0, :cond_0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "We don\'t need to connect with ims service in sub-process."

    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createImsManager : slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/SystemUIImsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/SystemUIImsManager$1;-><init>(Lcom/android/systemui/util/SystemUIImsManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p3, Lcom/android/systemui/util/SystemUIImsManager;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " state:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Slot 0 : "

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    const/4 p3, 0x0

    aget-object p1, p1, p3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "mImsManagerConnected : "

    .line 318
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    aget-boolean v0, v0, p3

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "mImsRegStateChangedCallbacks : "

    .line 320
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p3, "Slot 1 : "

    .line 323
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    iget-object p3, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsManagerConnected:[Z

    aget-boolean p1, p1, v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    .line 327
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public fireImsRegStateChangedCallback(I)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 200
    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;

    .line 202
    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStates:[Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;

    aget-object v3, v3, p1

    invoke-interface {v2, v3}, Lcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;->onImsRegStateChanged(Lcom/android/systemui/util/SystemUIImsManager$ImsRegState;)V

    goto :goto_0

    .line 204
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public removeImsRegStateChangedCallback(ILcom/android/systemui/util/SystemUIImsManager$ImsRegStateChangedCallback;)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 192
    monitor-enter v0

    .line 193
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/SystemUIImsManager;->mImsRegStateChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 194
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
