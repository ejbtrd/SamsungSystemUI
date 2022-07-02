.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->makeSeekBar(Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;ILjava/lang/String;Ljava/lang/String;II)V
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

    .line 1375
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroidx/appcompat/widget/SeslSeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_5

    .line 1393
    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1394
    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p3, p3, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/edgelighting/data/style/EdgeLightingStyleOption;

    .line 1398
    sget-object v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$13;->$SwitchMap$com$android$systemui$edgelighting$data$style$EdgeLightingStyleOption:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v1, p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_2

    if-eq p3, v0, :cond_1

    goto :goto_0

    .line 1408
    :cond_1
    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p3, p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2602(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I

    .line 1409
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->edge_lighting_header_duration:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1404
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p3, p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$3202(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I

    .line 1405
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->edge_lighting_header_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1400
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p3, p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$3102(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I

    .line 1401
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-virtual {p3}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$string;->edge_lighting_transparency:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/android/systemui/edgelighting/utils/Utils;->setSeekBarContentDescription(Landroid/content/Context;Landroidx/appcompat/widget/SeslSeekBar;Ljava/lang/CharSequence;)V

    .line 1413
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    if-nez p1, :cond_4

    .line 1414
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_1

    .line 1416
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 1

    .line 1384
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1385
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-string p0, "404"

    const-string p1, "4056"

    .line 1387
    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroidx/appcompat/widget/SeslSeekBar;)V
    .locals 0

    .line 1379
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$11;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    return-void
.end method
