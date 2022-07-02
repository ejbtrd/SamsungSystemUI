.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingWindowCallback;


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
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 539
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doActionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickExpandButton(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClickToastInWindow()V
    .locals 0

    return-void
.end method

.method public onDismissEdgeWindow()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$4;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    :cond_0
    return-void
.end method

.method public onExtendLightingDuration()V
    .locals 0

    return-void
.end method

.method public onFling(ZZ)V
    .locals 0

    return-void
.end method

.method public onFlingDownInWindow(Z)V
    .locals 0

    return-void
.end method

.method public onShowEdgeWindow()V
    .locals 0

    return-void
.end method

.method public onSwipeToastInWindow()V
    .locals 0

    return-void
.end method
