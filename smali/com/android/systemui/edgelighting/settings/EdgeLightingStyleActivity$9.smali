.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroidx/picker/widget/SeslColorPicker$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->showColorPickerDialog()V
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

    .line 1282
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 3

    .line 1285
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Color changed Listener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1287
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;->setEffectColors([I)V

    .line 1289
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1290
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;->updatePreview(Lcom/samsung/android/edgelighting/data/EdgeEffectInfo;)V

    goto :goto_0

    .line 1292
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    new-instance v1, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;

    iget-object v2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/edgelighting/container/EdgeLightingDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$802(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    .line 1293
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;[I)V

    .line 1295
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$9;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    return-void
.end method
