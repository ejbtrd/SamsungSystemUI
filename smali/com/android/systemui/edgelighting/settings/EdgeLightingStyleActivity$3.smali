.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 430
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 434
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lcom/android/systemui/R$id;->main_root_layout:I

    if-ne p1, p2, :cond_4

    .line 437
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "empty view clicked"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 439
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1000(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    if-nez p1, :cond_2

    .line 442
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 445
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 446
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$3;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1200(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Z)V

    :cond_3
    :goto_0
    const-string p0, "404"

    const-string p1, "4052"

    .line 449
    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
