.class Lcom/android/systemui/qs/SecAutoTileManager$3$1;
.super Ljava/lang/Object;
.source "SecAutoTileManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/SecAutoTileManager$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/SecAutoTileManager$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecAutoTileManager$3;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/SecAutoTileManager$3$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AutoTileManager"

    const-string v1, "EMERGENCY_STATE_CHANGED : refreshTileList"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$3$1;->this$1:Lcom/android/systemui/qs/SecAutoTileManager$3;

    iget-object p0, p0, Lcom/android/systemui/qs/SecAutoTileManager$3;->this$0:Lcom/android/systemui/qs/SecAutoTileManager;

    invoke-static {p0}, Lcom/android/systemui/qs/SecAutoTileManager;->access$000(Lcom/android/systemui/qs/SecAutoTileManager;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    return-void
.end method
