.class Lcom/android/systemui/doze/PluginAODManager$2;
.super Ljava/lang/Object;
.source "PluginAODManager.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/PluginAODManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/PluginAODManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/PluginAODManager;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {p0}, Lcom/android/systemui/doze/PluginAODManager;->access$100(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/plugins/aod/PluginAOD;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/plugins/aod/PluginAOD;->onFinishedGoingToSleep()V

    :cond_0
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v0}, Lcom/android/systemui/doze/PluginAODManager;->access$300(Lcom/android/systemui/doze/PluginAODManager;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getLastWakeReason()I

    move-result v0

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartedWakingUp why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginAODManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    invoke-static {v1, v0}, Lcom/android/systemui/doze/PluginAODManager;->access$400(Lcom/android/systemui/doze/PluginAODManager;I)V

    .line 185
    sget-boolean v0, Lcom/android/systemui/LsRune;->AOD_SUB_DISPLAY_AOD_BY_FOLDER_EVENT:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/doze/PluginAODManager$2;->this$0:Lcom/android/systemui/doze/PluginAODManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/PluginAODManager;->setStartedByFolderClosed(Z)V

    :cond_0
    return-void
.end method
