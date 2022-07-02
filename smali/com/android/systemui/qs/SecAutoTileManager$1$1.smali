.class Lcom/android/systemui/qs/SecAutoTileManager$1$1;
.super Ljava/lang/Object;
.source "SecAutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecAutoTileManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager$1;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$100(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object v0, v0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$200(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object v1, v1, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {v1}, Lcom/android/systemui/qs/SecAutoTileManager;->access$100(Lcom/android/systemui/qs/SecAutoTileManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$1;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$1;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$102(Lcom/android/systemui/qs/SecAutoTileManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    const-string p0, "AutoTileManager"

    const-string/jumbo v0, "unregister PreInstallerFinished"

    .line 102
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
