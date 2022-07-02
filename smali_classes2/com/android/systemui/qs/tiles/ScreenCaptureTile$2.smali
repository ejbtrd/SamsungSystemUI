.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;
.super Ljava/lang/Thread;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x190

    .line 186
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$400(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->val$intent:Landroid/content/Intent;

    const-string v2, "com.samsung.permission.CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$2;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$500(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "doScreenCapture Send com.samsung.android.capture.QuickPanelCapture"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
