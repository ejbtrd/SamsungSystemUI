.class Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;
.super Ljava/lang/Object;
.source "EdgeLightingStyleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;)V
    .locals 0

    .line 1105
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1108
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;

    .line 1110
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EffectListViewHolder;->style:Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 1112
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 1113
    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1900(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$800(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)Lcom/samsung/android/edgelighting/interfaces/IEdgeLightingController;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {v0, p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1902(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;)Lcom/android/systemui/edgelighting/interfaces/IEdgeLightingStyle;

    .line 1115
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->notifyDataSetChanged()V

    .line 1116
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$1100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 1118
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    invoke-static {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2100(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V

    .line 1120
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter$1;->this$1:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$EdgeLightingStyleEffectAdapter;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 1121
    invoke-static {p0}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->access$2200(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "404"

    const-string v0, "4061"

    .line 1120
    invoke-static {p1, v0, p0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
