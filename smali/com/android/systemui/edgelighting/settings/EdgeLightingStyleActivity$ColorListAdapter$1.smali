.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1242
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1243
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    .line 1246
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2400(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_1

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    sget v2, Lcom/android/systemui/R$string;->edge_lighting_color_selected_tts:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1251
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$302(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)I

    .line 1252
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    .line 1253
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onclick select index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object v1, v1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1257
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2500(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    goto :goto_0

    .line 1259
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 1261
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2600(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingDuration(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2700(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;I)V

    .line 1264
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$300(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result p0

    int-to-long p0, p0

    const-string v0, "404"

    const-string v1, "4062"

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
