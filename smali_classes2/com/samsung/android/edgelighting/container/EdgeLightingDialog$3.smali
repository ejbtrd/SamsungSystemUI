.class Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$3;
.super Ljava/lang/Object;
.source "EdgeLightingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->stopPreview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog$3;->this$0:Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;->access$100(Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;)V

    return-void
.end method
