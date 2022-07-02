.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;
.super Landroid/os/Handler;
.source "EdgeLightingStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Landroid/os/Looper;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1

    .line 240
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$2;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    :goto_0
    return-void
.end method
