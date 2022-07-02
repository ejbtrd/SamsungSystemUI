.class Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;
.super Landroid/os/Handler;
.source "EdgeLightingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "looper"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$1;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$000(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    :goto_0
    return-void
.end method
