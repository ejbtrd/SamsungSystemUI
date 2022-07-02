.class Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;
.super Ljava/lang/Object;
.source "SecQSCustomizerController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1002(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecCustomizeTileView;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    .line 127
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1102(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 130
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/android/systemui/R$id;->qs_active_paged:I

    const/16 v4, 0x1388

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1300(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    move v1, v4

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1400(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/16 v1, 0x1770

    :goto_0
    invoke-static {v2, v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1202(Lcom/android/systemui/qs/customize/SecQSCustomizerController;I)I

    .line 133
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1500(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1600(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    goto :goto_1

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1700(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    .line 135
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1800(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eq v2, v4, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->removeBadge(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "custom("

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1900(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    .line 140
    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSTileHost;->removeCustomTileFromNewCustomTileList(Landroid/content/ComponentName;)V

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getDragShadowBuilder(Lcom/android/systemui/qs/customize/SecCustomizeTileView;I)Landroid/view/View$DragShadowBuilder;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1100(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v4}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setLongClickedViewInfo(Lcom/android/systemui/qs/customize/SecQSCustomizer$CustomTileInfo;I)V

    .line 147
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    iget-object v2, v2, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_3

    const/16 v3, 0x6a

    .line 148
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$1000(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Lcom/android/systemui/qs/customize/SecCustomizeTileView;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->performHapticFeedback(I)Z

    .line 152
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2200(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->animationStart()V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    const/high16 v3, 0x100000

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1, v4, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p1

    invoke-static {v2, p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2302(Lcom/android/systemui/qs/customize/SecQSCustomizerController;Z)Z

    .line 154
    iget-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2300(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 155
    iget-object p0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizerController$4;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizerController;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/SecQSCustomizerController;->access$2400(Lcom/android/systemui/qs/customize/SecQSCustomizerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4
    return v0
.end method
