.class Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;
.super Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;
.source "MinimizeContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    invoke-direct {p0}, Lcom/samsung/android/multiwindow/IFreeformCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMinimizeAnimationEnd(I)V
    .locals 2

    .line 88
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onMinimizeAnimationEnd: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(II)V

    return-void
.end method

.method public onMinimized(Landroid/content/ComponentName;II)V
    .locals 6

    .line 56
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onMinimized: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, p1, v1, p3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    .line 71
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    .line 72
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 74
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method public onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    .locals 2

    .line 108
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onTaskMoveEnded: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0x29

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onTaskMoveStarted(ILandroid/graphics/Point;)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onTaskMoveStarted: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0x28

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onUnminimized(I)V
    .locals 2

    .line 79
    invoke-static {}, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MinimizeContainerService] IFreeformCallback_onUnminimized: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService$1;->this$0:Lcom/samsung/android/systemui/freeformcontainer/MinimizeContainerService;

    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(II)V

    return-void
.end method
