.class public Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;
.super Landroid/app/Service;
.source "MinimizeContainerService.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mFreeformCallback:Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;

.field private final mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 51
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    .line 53
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mFreeformCallback:Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 45
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 119
    sget-boolean p1, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "FreeformContainer"

    const-string v0, "[MinimizeContainerService] onBind()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mFreeformCallback:Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 122
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    .line 124
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 129
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[MinimizeContainerService] onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->mFreeformCallback:Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V

    .line 132
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    .line 135
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
